/* Run as SYS */
DECLARE
  v_apex_schema    VARCHAR2(30) := '#'; -- Put your APEX schema here, e.g. 'APEX_050100'
  v_parsing_schema VARCHAR2(30) := '#'; -- Put your Parsing schema here, e.g. 'HR'
BEGIN
  IF v_apex_schema != '#' AND v_parsing_schema != '#' THEN
    EXECUTE IMMEDIATE 'GRANT SELECT ON '||v_apex_schema||'.WWV_FLOW_PLUGIN_ATTRIBUTES TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_plugin_attributes FOR '||v_apex_schema||'.WWV_FLOW_PLUGIN_ATTRIBUTES';
    EXECUTE IMMEDIATE 'GRANT SELECT ON '||v_apex_schema||'.WWV_FLOW_PLUGINS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_plugins FOR '||v_apex_schema||'.WWV_FLOW_PLUGINS';
    EXECUTE IMMEDIATE 'GRANT SELECT ON '||v_apex_schema||'.WWV_FLOW_STEP_ITEMS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_page_items FOR '||v_apex_schema||'.WWV_FLOW_STEP_ITEMS';
    EXECUTE IMMEDIATE 'GRANT SELECT ON '||v_apex_schema||'.WWV_FLOW_WORKSHEET_COLUMNS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_ir_report_columns FOR '||v_apex_schema||'.WWV_FLOW_WORKSHEET_COLUMNS';
    EXECUTE IMMEDIATE 'GRANT SELECT ON '||v_apex_schema||'.WWV_FLOW_PROCESSING TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_application_processes FOR '||v_apex_schema||'.WWV_FLOW_PROCESSING';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.WWV_FLOW_LIST_ITEMS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_list_items FOR '||v_apex_schema||'.WWV_FLOW_LIST_ITEMS';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.WWV_FLOW_REGION_REPORT_COLUMN TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_region_report_columns FOR '||v_apex_schema||'.WWV_FLOW_REGION_REPORT_COLUMN';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.WWV_FLOW_PAGE_PLUGS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_page_regions FOR '||v_apex_schema||'.WWV_FLOW_PAGE_PLUGS';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.WWV_FLOW_SHORTCUTS TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_shortcuts FOR '||v_apex_schema||'.WWV_FLOW_SHORTCUTS';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.WWV_FLOW_TRANSLATABLE_COLS$ TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_translatable_columns FOR '||v_apex_schema||'.WWV_FLOW_TRANSLATABLE_COLS$';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.wwv_flow_translatable_text$ TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_translatable_text FOR '||v_apex_schema||'.wwv_flow_translatable_text$';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.wwv_flow_language_map TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_language_map FOR '||v_apex_schema||'.wwv_flow_language_map';
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON '||v_apex_schema||'.wwv_flow_translation_utilities TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_translation_utilities FOR '||v_apex_schema||'.wwv_flow_translation_utilities';
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON '||v_apex_schema||'.wwv_flow_messages$ TO '||v_parsing_schema;
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_application_messages FOR '||v_apex_schema||'.wwv_flow_messages$';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM apex_plugin_dev FOR '||v_apex_schema||'.wwv_flow_plugin_dev';
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON '||v_apex_schema||'.wwv_flow_plugin_dev TO '||v_parsing_schema;
  ELSE
    raise_application_error(-20000, 'Please set input variables first.');
  END IF;
END;
/



