CREATE OR REPLACE PACKAGE BODY apex_custom_trans_util IS
/*******************************************************************************
** CREATED: 15.10.2018 08:00
** NAME   : apex_custom_trans_util
** CONTENT: Custom APEX Translation utilities
** AUTHOR : Daniel Huha
*******************************************************************************/

  m_collection   VARCHAR2(30)   := 'APEX_APP_TRANSLATIONS';
  m_workspace_id NUMBER         := apex_util.find_security_group_id('DEMO1'); -- set your appropriate Workspace
  
  ------------------------------------------------------------------------------
  -- is_attribute_translatable
  --
  FUNCTION is_attribute_translatable(
    p_application_id     IN NUMBER
   ,p_plugin_type        IN VARCHAR2
   ,p_plugin_name        IN VARCHAR2
   ,p_attribute_scope    IN VARCHAR2
   ,p_attribute_sequence IN NUMBER
  ) RETURN VARCHAR2 AS
    v_ret VARCHAR2(1) := 'N';
  BEGIN
    SELECT /*+ result_cache */
           is_translatable
      INTO v_ret     
      FROM apex_plugins p,
           apex_plugin_attributes a
     WHERE p.flow_id            = p_application_id
       AND p.plugin_type        = p_plugin_type
       AND p.name               = p_plugin_name
       AND a.plugin_id          = p.id
       AND a.attribute_sequence = p_attribute_sequence
       AND a.attribute_scope    = p_attribute_scope;
                                
    RETURN v_ret;

  EXCEPTION
    WHEN others THEN
      RETURN 'N';                              
  END is_attribute_translatable;

  ------------------------------------------------------------------------------
  -- is_column_translatable
  --
  FUNCTION is_column_translatable(
    p_application_id IN NUMBER
   ,p_table_name     IN VARCHAR2
   ,p_column_name    IN VARCHAR2
   ,p_id             IN NUMBER 
  ) RETURN VARCHAR2 AS
    v_ret VARCHAR2(1) := 'N';
  BEGIN
    IF apex_plugin_dev.is_column_translatable (
         p_application_id => p_application_id
        ,p_table_name     => p_table_name
        ,p_column_name    => p_column_name
        ,p_id             => p_id)
    THEN
      v_ret := 'Y';                          
    END IF;
                                
    RETURN v_ret;

  EXCEPTION  
    WHEN others THEN
      RETURN 'N';
  END is_column_translatable;

  ------------------------------------------------------------------------------
  -- PROCEDURE creates Trans. Collection with contents that are usually exported to XLIFF file
  --
  PROCEDURE create_trans_collection(i_application_id IN NUMBER, i_translated_application_id IN NUMBER, i_page_id IN NUMBER) IS
    v_apex_trans_tab t_apex_trans_tab;
  BEGIN
    apex_collection.create_or_truncate_collection(m_collection);

    SELECT to_number(null) seq_id                   
          ,xliff_id                 
          ,m_workspace_id             
          ,translation_id           
          ,i_application_id           
          ,i_translated_application_id
          ,translate_from_text      
          ,translate_to_text        
          ,table_name               
          ,column_name
          ,translate_from_flow_table 
          ,translate_from_flow_column             
          ,translate_from_id        
          ,translate_to_id BULK COLLECT
      INTO v_apex_trans_tab
      FROM (SELECT  'S-' || TO_CHAR(c.id,'TM9','NLS_NUMERIC_CHARACTERS=''.,''') || '-' || t.translate_from_id || '-' || t.flow_id xliff_id
                   ,to_char(t.translate_from_text) translate_from_text
                   ,to_char(t.translate_to_text) translate_to_text
                   ,c.table_name
                   ,c.column_name
                   ,t.translate_from_id
                   ,t.translate_to_id
                   ,t.id translation_id
                   ,t.translate_from_flow_table
                   ,t.translate_from_flow_column
               FROM apex_translatable_text t
               JOIN apex_translatable_columns c ON (    c.table_name = t.translate_from_flow_table
                                                    AND c.column_name = t.translate_from_flow_column
                                                    AND (    c.template_translatable = 'N'
                                                         OR (c.template_translatable = 'Y' AND t.template_translatable = 'Y')))
               LEFT JOIN apex_shortcuts sc ON (    c.table_name = 'WWV_FLOW_SHORTCUTS'
                                               AND c.column_name = 'SHORTCUT'
                                               AND sc.flow_id = t.flow_id
                                               AND sc.security_group_id = t.security_group_id
                                               AND sc.id = t.translate_from_id
                                               AND sc.shortcut_type IN ('HTML_TEXT','HTML_TEXT_ESCAPE_SC','TEXT_ESCAPE_JS'))
               LEFT JOIN (SELECT t.security_group_id
                                ,t.flow_id
                                ,nvl(t.page_id, r.page_id) page_id
                                ,pr.id report_column_id
                            FROM apex_translatable_text t
                                ,apex_region_report_columns pr
                                ,apex_page_regions r
                           WHERE t.translate_from_flow_table = 'WWV_FLOW_REGION_REPORT_COLUMN'
                             AND t.translate_from_flow_column = 'COLUMN_HEADING'
                             AND pr.flow_id = t.flow_id
                             AND pr.security_group_id = t.security_group_id
                             AND pr.id = t.translate_from_id
                             AND r.flow_id = pr.flow_id
                             AND r.security_group_id = pr.security_group_id
                             AND r.id = pr.region_id) rc ON (rc.flow_id = t.flow_id AND rc.security_group_id = t.security_group_id AND rc.report_column_id = t.translate_from_id)
               LEFT JOIN apex_list_items li ON (c.table_name = 'WWV_FLOW_LIST_ITEMS' AND (c.column_name LIKE 'LIST_TEXT_0%' OR c.column_name LIKE 'LIST_TEXT_1%') AND li.flow_id = t.flow_id AND li.security_group_id = t.security_group_id AND li.id = t.translate_from_id AND NVL(li.translate_list_text_y_n,'N') != 'N')
               LEFT JOIN apex_application_processes p ON (c.table_name = 'WWV_FLOW_PROCESSING' AND c.column_name = 'PROCESS_ERROR_MESSAGE' AND NVL(p.process_point, 'X') = 'ON_DEMAND' AND p.flow_id = t.flow_id AND p.security_group_id = t.security_group_id AND p.id = t.translate_from_id)
               LEFT JOIN apex_ir_report_columns irc ON (c.table_name = 'WWV_FLOW_WORKSHEET_COLUMNS' AND c.column_name = 'COLUMN_LABEL' AND NVL(irc.sync_form_label,'Y') != 'Y' AND irc.flow_id = t.flow_id AND irc.security_group_id = t.security_group_id AND irc.id = t.translate_from_id)
               LEFT JOIN apex_page_regions r ON (c.table_name = 'WWV_FLOW_PAGE_PLUGS' AND c.column_name = 'PLUG_SOURCE' AND (c.template_translatable = 'N' OR (c.template_translatable = 'Y' AND t.template_translatable = 'Y')) AND r.flow_id = t.flow_id AND r.page_id = t.page_id AND r.security_group_id = t.security_group_id AND r.id = t.translate_from_id AND r.plug_source_type = 'NATIVE_STATIC')
               LEFT JOIN apex_page_items i ON (c.table_name = 'WWV_FLOW_STEP_ITEMS' AND i.flow_id = t.flow_id AND i.flow_step_id = t.page_id AND i.security_group_id = t.security_group_id AND i.id = t.translate_from_id AND i.display_as <> 'NATIVE_HIDDEN' AND (  c.column_name NOT LIKE 'ATTRIBUTE\___' ESCAPE '\' OR apex_custom_trans_util.is_attribute_translatable(t.flow_id, 'ITEM TYPE', REPLACE(i.display_as, 'PLUGIN_HR.', 'HR.'), 'COMPONENT', SUBSTR(c.column_name, 11)) = 'Y'))
              WHERE t.security_group_id = m_workspace_id
                AND t.flow_id = i_application_id
                AND t.translated_flow_id = i_translated_application_id
                AND NVL(t.page_id, rc.page_id) = i_page_id
                AND c.table_name NOT IN ('WWV_FLOW_PAGE_DA_ACTIONS', 'WWV_FLOW_STEP_ITEMS')
                AND sys.dbms_lob.getlength(t.translate_from_text) > 0
                AND c.id <> 111
                AND (c.column_name != 'PLUG_SOURCE' OR r.id IS NOT NULL)
                AND (   NOT (c.column_name LIKE 'ATTRIBUTE\___' ESCAPE '\' AND c.table_name IN ('WWV_FLOW_PLUGIN_SETTINGS',
                                                                                                'WWV_FLOW_STEP_PROCESSING',
                                                                                                'WWV_FLOW_PAGE_PLUGS',
                                                                                                'WWV_FLOW_STEP_ITEMS',
                                                                                                'WWV_FLOW_PAGE_DA_ACTIONS',
                                                                                                'WWV_FLOW_SECURITY_SCHEMES',
                                                                                                'WWV_FLOW_AUTHENTICATIONS'))
                     OR (apex_custom_trans_util.is_column_translatable(t.flow_id, c.table_name, c.column_name, t.translate_from_id) = 'Y'))
              UNION ALL -- STATIC REGIONS SOURCE
             SELECT 'S' || '-' || TO_CHAR(c.id,'TM9','NLS_NUMERIC_CHARACTERS=''.,''') || '-' || t.translate_from_id || '-' || t.flow_id xliff_id
                   ,TO_CHAR(t.translate_from_text) translate_from_text
                   ,TO_CHAR(t.translate_to_text) translate_to_text
                   ,c.table_name
                   ,p.plug_source_type column_name
                   ,t.translate_from_id
                   ,t.translate_to_id
                   ,t.id translation_id
                   ,t.translate_from_flow_table
                   ,t.translate_from_flow_column
               FROM apex_translatable_text t
                   ,apex_translatable_columns c
                   ,apex_page_regions p
              WHERE t.security_group_id = m_workspace_id
                AND t.flow_id = i_application_id
                AND t.translated_flow_id = i_translated_application_id
                AND t.page_id = i_page_id
                AND c.table_name = t.translate_from_flow_table
                AND c.column_name = t.translate_from_flow_column
                AND c.table_name = 'WWV_FLOW_PAGE_PLUGS'
                AND c.column_name = 'PLUG_SOURCE'
                AND (c.template_translatable = 'N' OR (c.template_translatable = 'Y' AND t.template_translatable = 'Y'))
                AND p.id = t.translate_from_id
                AND p.plug_source_type = 'NATIVE_STATIC'
                AND sys.dbms_lob.getlength(t.translate_from_text) > 0
              UNION ALL -- PAGE ITEMS
             SELECT 'S' || '-' || TO_CHAR(c.id,'TM9','NLS_NUMERIC_CHARACTERS=''.,''') || '-' || t.translate_from_id || '-' || t.flow_id xliff_id
                   ,TO_CHAR(t.translate_from_text) translate_from_text
                   ,TO_CHAR(t.translate_to_text) translate_to_text
                   ,c.table_name
                   ,i.name column_name
                   ,t.translate_from_id
                   ,t.translate_to_id
                   ,t.id translation_id
                   ,t.translate_from_flow_table
                   ,t.translate_from_flow_column
               FROM apex_translatable_text t,
                    apex_translatable_columns c,
                    apex_page_items i
              WHERE t.security_group_id = m_workspace_id
                AND t.flow_id = i_application_id
                AND t.translated_flow_id = i_translated_application_id
                AND t.page_id = i_page_id
                AND c.table_name = t.translate_from_flow_table
                AND c.column_name = t.translate_from_flow_column
                AND c.table_name = 'WWV_FLOW_STEP_ITEMS'
                AND i.id = t.translate_from_id
                AND i.display_as <> 'NATIVE_HIDDEN'
                AND sys.dbms_lob.getlength(t.translate_from_text) > 0
                AND (   c.column_name NOT LIKE 'ATTRIBUTE\___' ESCAPE '\'
                     OR apex_custom_trans_util.is_attribute_translatable(t.flow_id, 'ITEM TYPE', REPLACE(i.display_as, 'PLUGIN_HR.', 'HR.'), 'COMPONENT', SUBSTR(c.column_name, 11)) = 'Y')
    );

    IF v_apex_trans_tab.COUNT > 0 THEN
      FOR i IN v_apex_trans_tab.FIRST..v_apex_trans_tab.LAST LOOP
        apex_collection.add_member(
          m_collection
         ,p_c001 => v_apex_trans_tab(i).xliff_id                 
         ,p_c002 => v_apex_trans_tab(i).workspace_id             
         ,p_n001 => v_apex_trans_tab(i).translation_id           
         ,p_n002 => v_apex_trans_tab(i).application_id           
         ,p_n003 => v_apex_trans_tab(i).translated_application_id
         ,p_c003 => v_apex_trans_tab(i).translate_from_text      
         ,p_c004 => v_apex_trans_tab(i).translate_to_text        
         ,p_c005 => v_apex_trans_tab(i).table_name               
         ,p_c006 => v_apex_trans_tab(i).column_name              
         ,p_c007 => v_apex_trans_tab(i).translate_from_flow_table
         ,p_c008 => v_apex_trans_tab(i).translate_from_flow_column
         ,p_n004 => v_apex_trans_tab(i).translate_from_id        
         ,p_n005 => v_apex_trans_tab(i).translate_to_id);
      END LOOP;
    ELSE
      raise_application_error(-20101, 'No translations for given parameters!');
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20102, 'Error while creating translation Collection! '||sqlerrm);
  END create_trans_collection;

  ------------------------------------------------------------------------------
  -- PROCEDURE inserts or updates WWV_FLOW_MESSAGES$ records
  --
  PROCEDURE add_apex_app_msg(
    i_app_id          IN NUMBER
   ,i_name            IN VARCHAR2
   ,i_language        IN VARCHAR2
   ,i_text            IN VARCHAR2
   ,i_is_js_message   IN VARCHAR2 DEFAULT 'N'
   ,i_message_comment IN VARCHAR2 DEFAULT NULL
  ) IS
  BEGIN
    MERGE INTO apex_application_messages m
      USING (SELECT i_app_id          app_id         
                   ,i_name            name           
                   ,i_language        language       
                   ,i_text            text           
                   ,i_is_js_message   is_js_message  
                   ,i_message_comment message_comment
               FROM dual) i
      ON (m.name = i.name AND m.flow_id = i.app_id AND m.message_language = i.language AND m.security_group_id = m_workspace_id)
    WHEN MATCHED THEN
      UPDATE 
         SET m.message_text = i.text 
    WHEN NOT MATCHED THEN
      INSERT (
        flow_id          
       ,name             
       ,message_language 
       ,message_text     
       ,is_js_message    
       ,security_group_id
       ,message_comment
      ) VALUES (
        i.app_id         
       ,i.name           
       ,i.language       
       ,i.text           
       ,i.is_js_message  
       ,m_workspace_id
       ,i.message_comment
      );
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20103, 'Error while adding Text Message: '||sqlerrm);
  END add_apex_app_msg;
  
  ------------------------------------------------------------------------------
  -- PROCEDURE wrapper for wwv_flow_translation_utilities.seed_translations
  --
  PROCEDURE seed_translations(i_app_id IN NUMBER, i_translation_app_id IN NUMBER, i_insert_only IN VARCHAR2 DEFAULT 'NO') IS
  BEGIN
    apex_util.set_security_group_id(p_security_group_id => m_workspace_id);

    FOR c1 IN (SELECT translation_flow_language_code
                 FROM apex_language_map
                WHERE translation_flow_id = i_translation_app_id)
    LOOP
      apex_translation_utilities.seed_translations (
          p_flow_id     => i_app_id,
          p_language    => c1.translation_flow_language_code,
          p_insert_only => i_insert_only);
    END LOOP;
  END seed_translations;

  ------------------------------------------------------------------------------
  -- PROCEDURE wrapper for wwv_flow_translation_utilities.publish_application
  --
  PROCEDURE publish_application(i_app_id IN NUMBER, i_translation_app_id IN NUMBER) IS
  BEGIN
    apex_util.set_security_group_id(p_security_group_id => m_workspace_id);

    apex_translation_utilities.publish_application (
        p_from_flow_id       => i_app_id,
        p_translated_flow_id => i_translation_app_id,
        p_security_group_id  => m_workspace_id);

  END publish_application;

  ------------------------------------------------------------------------------
  -- FUNCTION returns CSV file blob for given query
  --
  FUNCTION get_csv_blob(
    i_query               IN VARCHAR2
   ,i_delimiter           IN VARCHAR2 DEFAULT ';'
   ,i_newline_character   IN VARCHAR2 DEFAULT CHR(13)
   ,i_export_column_names IN VARCHAR2 DEFAULT 'Y'
  ) RETURN BLOB IS
    v_column_list    VARCHAR2(32676);
    v_sql            VARCHAR2(32676);
    v_columns_arr    wwv_flow_global.vc_arr2;
    v_nl             VARCHAR2(1) := CHR(13); -- new line character
    v_target_charset VARCHAR2(20) := 'EE8MSWIN1250';
    v_blob           BLOB;
    v_file_content   CLOB;
    v_dest_offset    INTEGER := 1;
    v_src_offset     INTEGER := 1;
    v_lang_context   INTEGER := 0;
    v_warning        INTEGER;
    v_cursor_id      INTEGER;
    v_col_cnt        INTEGER;
    v_columns        dbms_sql.desc_tab;
    v_heading_list   VARCHAR2(32676);
    v_csv            CLOB;
    v_temp_clob      CLOB;
    v_data_exists    BOOLEAN := FALSE;
    v_row            VARCHAR2(32676);
    v_namevar        VARCHAR2(4000);
    v_numvar         NUMBER;
    v_datevar        DATE;

    TYPE t_curtype IS REF CURSOR;
    v_curtype t_curtype;
  BEGIN
    dbms_lob.createtemporary(v_file_content, FALSE);
    dbms_lob.createtemporary(v_blob,         FALSE);
    dbms_lob.createtemporary(v_csv,          TRUE);
    dbms_lob.createtemporary(v_temp_clob,    TRUE);

    v_nl := i_newline_character;

    OPEN v_curtype FOR i_query;

    v_cursor_id := dbms_sql.to_cursor_number(v_curtype);

    dbms_sql.describe_columns(v_cursor_id, v_col_cnt, v_columns);

    FOR i IN 1 .. v_col_cnt LOOP
      v_heading_list := v_heading_list || translate(v_columns(i).col_name, i_delimiter || chr(10) || chr(13), ' ' || ' ') || i_delimiter;

      IF v_columns(i).col_type = 2 THEN
        dbms_sql.define_column(v_cursor_id, i, v_numvar);
      ELSIF v_columns(i).col_type = 12 THEN
        dbms_sql.define_column(v_cursor_id, i, v_datevar);
      ELSE
        dbms_sql.define_column(v_cursor_id, i, v_namevar, 4000);
      END IF;
    END LOOP;

    IF i_export_column_names = 'Y' THEN
      v_csv := TO_CLOB(v_heading_list||v_nl);
    END IF;

    WHILE dbms_sql.fetch_rows(v_cursor_id) > 0 LOOP
      v_data_exists := TRUE;
      v_row         := NULL;

      FOR i IN 1 .. v_col_cnt LOOP
        IF (v_columns(i).col_type = 2) THEN
          dbms_sql.column_value(v_cursor_id, i, v_numvar);

          v_row := v_row || translate(to_char(v_numvar), i_delimiter || chr(10) || chr(13), ' ' || '') || i_delimiter;
        ELSIF (v_columns(i).col_type = 12) THEN
          dbms_sql.column_value(v_cursor_id, i, v_datevar);

          v_row := v_row || translate(to_char(v_datevar, 'dd.mm.rrrr'), i_delimiter || chr(10) || chr(13), ' ' || '') || i_delimiter;
        ELSE
          dbms_sql.column_value(v_cursor_id, i, v_namevar);

          v_row := v_row || translate(v_namevar, i_delimiter || chr(10) || chr(13), ' ' || '') || i_delimiter;
        END IF;
      END LOOP;

      v_temp_clob := TO_CLOB(v_row||v_nl);
      v_csv       := v_csv || v_temp_clob;
    END LOOP;

    IF v_data_exists THEN
     v_file_content := v_csv;
    ELSE
     v_file_content := 'No Data Found';
    END IF;

    dbms_sql.close_cursor(v_cursor_id);

    dbms_lob.freetemporary(v_csv);
    dbms_lob.freetemporary(v_temp_clob);

    dbms_lob.converttoblob(
      dest_lob     => v_blob
     ,src_clob     => v_file_content
     ,amount       => dbms_lob.getlength(v_file_content)
     ,dest_offset  => v_dest_offset
     ,src_offset   => v_src_offset
     ,blob_csid    => NLS_CHARSET_ID(v_target_charset)
     ,lang_context => v_lang_context
     ,warning      => v_warning
    );

    RETURN v_blob;
  EXCEPTION
    WHEN OTHERS THEN
      IF v_curtype%ISOPEN THEN
        dbms_sql.close_cursor(v_cursor_id);
      END IF;
      
      RETURN v_blob;
  END get_csv_blob;

  ------------------------------------------------------------------------------
  -- PROCEDURE creates APEX file download
  --
  PROCEDURE download_file_from_blob(
    io_blob               IN OUT NOCOPY BLOB
   ,i_filename            IN     VARCHAR2
   ,i_extension           IN     VARCHAR2
   ,i_content_disposition IN     VARCHAR2 DEFAULT 'attachment'
   ,i_stop_apex_engine    IN     VARCHAR2 DEFAULT 'Y'
  ) IS
    v_mime_header VARCHAR2(100);
    v_filename    VARCHAR2(500);
  BEGIN
    CASE LOWER(i_extension)
      WHEN 'pdf' THEN
        v_mime_header := 'application/pdf';
      ELSE
        v_mime_header := 'application/octet';
    END CASE;

    v_filename := i_filename || '.' || i_extension;

    htp.init;
    owa_util.mime_header(v_mime_header, FALSE);
    htp.p('Content-Disposition: ' || i_content_disposition || '; filename="' || v_filename || '"');
    htp.p('Content-Length: ' || dbms_lob.getlength(io_blob));
    owa_util.http_header_close;
    wpg_docload.download_file(io_blob);

    IF i_stop_apex_engine = 'Y' THEN
      apex_application.g_unrecoverable_error := TRUE;
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END download_file_from_blob;

  ------------------------------------------------------------------------------
  -- PROCEDURE generates DML statements script for translations, APEX download
  --
  PROCEDURE gen_deployment_script(i_translated_app_id IN NUMBER, i_page_id IN NUMBER, i_seed IN VARCHAR2 DEFAULT 'Y', i_publish IN VARCHAR2 DEFAULT 'Y') IS
    v_sql  VARCHAR2(16000);
    v_blob BLOB;
  BEGIN
    create_trans_collection(v('APP_ID'), i_translated_app_id, i_page_id);
  
    v_sql := 
     'SELECT sql_line
        FROM (SELECT ''SET DEFINE OFF'' sql_line FROM dual
               UNION ALL
              SELECT ''BEGIN'' sql_line FROM dual
               UNION ALL
              SELECT ''apex_custom_trans_util.seed_translations('||v('APP_ID')||', '||i_translated_app_id||');'' sql_line FROM dual WHERE '''||i_seed||''' = ''Y''
               UNION ALL
              SELECT ''UPDATE apex_translatable_text SET translate_to_text = ''''''||t.translate_to_text||'''''' WHERE translate_from_id = ''||tt.translate_from_id||'' AND translate_to_id = ''||replace(to_char(tt.translate_to_id), '','', ''.'')||'' AND translate_from_flow_table = ''''''||tt.translate_from_flow_table||'''''' AND translate_from_flow_column = ''''''||tt.translate_from_flow_column||'''''';'' sql_line
                FROM (SELECT c001 xliff_id,
                             c002 workspace_id,
                             n001 translation_id,
                             n002 application_id,
                             n003 translated_application_id,
                             c003 translate_from_text,
                             c004 translate_to_text,
                             c005 table_name,
                             c006 column_name,
                             c007 translate_from_flow_table,
                             c008 translate_from_flow_column,
                             n004 translate_from_id,
                             n005 translate_to_id
                        FROM apex_collections ac
                       WHERE ac.collection_name = '''||m_collection||''') t
                        ,apex_translatable_text tt
                   WHERE t.translated_application_id = '||i_translated_app_id||' 
                     AND tt.translate_from_id = t.translate_from_id
                     AND tt.translate_to_id = t.translate_to_id
                     AND tt.translate_from_flow_table = t.translate_from_flow_table
                     AND tt.translate_from_flow_column = t.translate_from_flow_column
                     AND tt.translate_from_flow_column NOT LIKE ''ATTRIBUTE%'')
               UNION ALL
              SELECT ''apex_custom_trans_util.publish_application('||v('APP_ID')||', '||i_translated_app_id||');'' sql_line FROM dual WHERE '''||i_publish||''' = ''Y''
               UNION ALL
              SELECT ''COMMIT;'' sql_line FROM dual
               UNION ALL
              SELECT ''END;'' sql_line FROM dual';

    dbms_lob.createtemporary(v_blob, TRUE);

    v_blob := get_csv_blob(v_sql, i_delimiter => ' ', i_export_column_names => 'N');

    download_file_from_blob(
      io_blob            => v_blob
     ,i_filename         => 'p'||i_page_id||'_translation_update'
     ,i_extension        => 'sql');

    dbms_lob.freetemporary(v_blob);

  END gen_deployment_script;
  
END apex_custom_trans_util;
/

