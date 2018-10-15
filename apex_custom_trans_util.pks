CREATE OR REPLACE PACKAGE apex_custom_trans_util IS
/*******************************************************************************
** CREATED: 15.10.2018 08:00
** NAME   : apex_custom_trans_util
** CONTENT: Custom APEX Translation utilities
** AUTHOR : Daniel Huha
*******************************************************************************/
    
  ------------------------------------------------------------------------------
  -- is_attribute_translatable
  --
  FUNCTION is_attribute_translatable(
    p_application_id     IN NUMBER
   ,p_plugin_type        IN VARCHAR2
   ,p_plugin_name        IN VARCHAR2
   ,p_attribute_scope    IN VARCHAR2
   ,p_attribute_sequence IN NUMBER
  ) RETURN VARCHAR2;
  
  ------------------------------------------------------------------------------
  -- is_column_translatable
  --
  FUNCTION is_column_translatable(
    p_application_id IN NUMBER
   ,p_table_name     IN VARCHAR2
   ,p_column_name    IN VARCHAR2
   ,p_id             IN NUMBER 
  ) RETURN VARCHAR2;
  
  --
  -- APEX_TRANS Types
  --
  -- User types
  --
  TYPE t_apex_trans_rec IS RECORD (
    seq_id                      apex_collections.seq_id%TYPE
   ,xliff_id                    apex_collections.c001%TYPE
   ,workspace_id                apex_collections.c002%TYPE
   ,translation_id              apex_collections.n001%TYPE
   ,application_id              apex_collections.n002%TYPE
   ,translated_application_id   apex_collections.n003%TYPE
   ,translate_from_text         apex_collections.c003%TYPE
   ,translate_to_text           apex_collections.c004%TYPE
   ,table_name                  apex_collections.c005%TYPE
   ,column_name                 apex_collections.c006%TYPE
   ,translate_from_flow_table   apex_collections.c007%TYPE
   ,translate_from_flow_column  apex_collections.c008%TYPE
   ,translate_from_id           apex_collections.n004%TYPE
   ,translate_to_id             apex_collections.n005%TYPE
  );
  
  TYPE t_apex_trans_tab IS TABLE OF t_apex_trans_rec INDEX BY BINARY_INTEGER;

  ------------------------------------------------------------------------------
  -- PROCEDURE creates Trans. Collection with contents that are usually exported to XLIFF file
  --
  PROCEDURE create_trans_collection(i_application_id IN NUMBER, i_translated_application_id IN NUMBER, i_page_id IN NUMBER);

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
  );

  ------------------------------------------------------------------------------
  -- PROCEDURE wrapper for wwv_flow_translation_utilities.seed_translations
  --
  PROCEDURE seed_translations(i_app_id IN NUMBER, i_translation_app_id IN NUMBER, i_insert_only IN VARCHAR2 DEFAULT 'NO');

  ------------------------------------------------------------------------------
  -- PROCEDURE wrapper for wwv_flow_translation_utilities.publish_application
  --
  PROCEDURE publish_application(i_app_id IN NUMBER, i_translation_app_id IN NUMBER);

  ------------------------------------------------------------------------------
  -- PROCEDURE generates DML statements script for translations, APEX download
  --
  PROCEDURE gen_deployment_script(i_translated_app_id IN NUMBER, i_page_id IN NUMBER, i_seed IN VARCHAR2 DEFAULT 'Y', i_publish IN VARCHAR2 DEFAULT 'Y');

END apex_custom_trans_util;
/

