prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1540316934231368
,p_default_application_id=>180
,p_default_owner=>'HR'
);
end;
/
 
prompt APPLICATION 180 - My Demo App
--
-- Application Export:
--   Application:     180
--   Name:            My Demo App
--   Date and Time:   21:49 Sunday October 13, 2019
--   Exported By:     DHUHA
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     270113655139457
--

-- Application Statistics:
--   Pages:                      6
--     Items:                    9
--     Processes:                6
--     Regions:                  7
--     Buttons:                  4
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   2
--       Shortcuts:              1
--     Globalization:
--       Messages:               5
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'My Demo App')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'180')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3501046A40009C8D172AC22F785FD9FA6339D67C978F23E1BDFCC664EA4B44BF'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD.MM.RRRR'
,p_timestamp_format=>'DD.MM.RRRR'
,p_timestamp_tz_format=>'DD.MM.RRRR'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2018.10.11.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(3815674022629895)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:My Demo App'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'My Demo App'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20191013134801'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3816474318629898)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3946710632630100)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3950818416644710)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-child'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3959767166648772)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tiles-8'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4091295504373099)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Translation Util'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3936257787630026)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3948286982630113)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3948798018630113)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(3948286982630113)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3949171444630114)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(3948286982630113)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223453935423534222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(3937709901630061)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(3937963830630062)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3813593861629890)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3813916793629891)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3814191737629892)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3814474444629892)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3814769154629892)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3815031424629892)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3815420758629892)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(3939253681630063)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(3976049296047519)
,p_name=>'FSP_LANGUAGE_PREFERENCE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/app_lang_lov
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3988794349763157)
,p_lov_name=>'APP_LANG_LOV'
,p_lov_query=>'.'||wwv_flow_api.id(3988794349763157)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3989097120763159)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hrvatski'
,p_lov_return_value=>'hr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3989435131763160)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Deutsch'
,p_lov_return_value=>'de'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3989855967763160)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'English'
,p_lov_return_value=>'en'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3990308395763160)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Fran\00E7ais')
,p_lov_return_value=>'fr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2540781267902931)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Slovenski'
,p_lov_return_value=>'sl'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3941848652630087)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(3941848652630087)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3942231007630089)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(3939904350630066)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(3816007857629896)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(3816161363629896)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3816790095629904)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3817074255629910)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3817384884629911)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3817661184629911)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3817958854629911)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3818277825629911)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3818554819629912)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3818856502629912)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3819133062629912)
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3819525938629914)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3819833063629915)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3820153601629915)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3820522310629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3820823469629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3821113957629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3821361386629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3821636416629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3821936220629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3822243573629916)
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3822681339629917)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3823013014629917)
,p_page_template_id=>wwv_flow_api.id(3822681339629917)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3823254804629917)
,p_page_template_id=>wwv_flow_api.id(3822681339629917)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3823460965629917)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3823806396629918)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3824124370629918)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3824392188629918)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3824665807629919)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3824948033629919)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3825257781629919)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3825535185629919)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3825887008629919)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3826156304629920)
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3826529718629920)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3826879587629920)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3827146992629920)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3827480286629920)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3827773540629921)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3828112008629921)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3828354514629921)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3828638712629921)
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3829056087629922)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3829382582629922)
,p_page_template_id=>wwv_flow_api.id(3829056087629922)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3829689025629922)
,p_page_template_id=>wwv_flow_api.id(3829056087629922)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3829985146629922)
,p_page_template_id=>wwv_flow_api.id(3829056087629922)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3830602050629922)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3830896862629923)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3831137231629923)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3831441795629923)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3831797330629923)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3832035859629923)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3832345679629925)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3832637037629927)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3833017304629927)
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3833404958629927)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3833712944629927)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3834005807629928)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3834322705629928)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3834607430629928)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3834905685629928)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3835202398629929)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3835520663629929)
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3835833689629929)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3836203496629929)
,p_page_template_id=>wwv_flow_api.id(3835833689629929)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3836513289629930)
,p_page_template_id=>wwv_flow_api.id(3835833689629929)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3836730762629930)
,p_page_template_id=>wwv_flow_api.id(3835833689629929)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3914616878629993)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3914709239629994)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3914764419629994)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3837402105629931)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3837654560629934)
,p_plug_template_id=>wwv_flow_api.id(3837402105629931)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3841050155629937)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3841247849629937)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3841543757629937)
,p_plug_template_id=>wwv_flow_api.id(3841247849629937)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3841912710629938)
,p_plug_template_id=>wwv_flow_api.id(3841247849629937)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3842117169629938)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3842343964629938)
,p_plug_template_id=>wwv_flow_api.id(3842117169629938)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3842709756629938)
,p_plug_template_id=>wwv_flow_api.id(3842117169629938)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3844228697629939)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3844614335629939)
,p_plug_template_id=>wwv_flow_api.id(3844228697629939)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3844892951629939)
,p_plug_template_id=>wwv_flow_api.id(3844228697629939)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3851500338629943)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3851741901629944)
,p_plug_template_id=>wwv_flow_api.id(3851500338629943)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3852071281629944)
,p_plug_template_id=>wwv_flow_api.id(3851500338629943)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3856069743629946)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3857860766629947)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3858195745629947)
,p_plug_template_id=>wwv_flow_api.id(3857860766629947)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3859374387629948)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3859695999629948)
,p_plug_template_id=>wwv_flow_api.id(3859374387629948)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3861443286629949)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3862106855629949)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3862387877629950)
,p_plug_template_id=>wwv_flow_api.id(3862106855629949)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3862609736629950)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3862832943629950)
,p_plug_template_id=>wwv_flow_api.id(3862609736629950)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3863221326629950)
,p_plug_template_id=>wwv_flow_api.id(3862609736629950)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3869371804629954)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3869648962629954)
,p_plug_template_id=>wwv_flow_api.id(3869371804629954)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3869986071629954)
,p_plug_template_id=>wwv_flow_api.id(3869371804629954)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3871991187629955)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3872990294629956)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3873258729629956)
,p_plug_template_id=>wwv_flow_api.id(3872990294629956)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3893682598629973)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3897627150629977)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3902634623629980)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3904253010629981)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3906718733629982)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3907676777629984)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3907851515629984)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3908065233629984)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3908502742629986)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3910044687629986)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3911074218629987)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3912630664629989)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3874254550629956)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3874424672629958)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3878431308629960)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3883255789629965)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3884078476629966)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3886684730629968)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3886882975629968)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(3886882975629968)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3889496455629970)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3889893083629970)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3891920701629972)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3913838382629990)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914023747629991)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914025239629992)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914210361629992)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914320508629992)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914325488629992)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3914494991629992)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(3915522238629994)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(3915637458629998)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(3915538902629996)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(3916923910630005)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(3833404958629927)
,p_default_dialog_template=>wwv_flow_api.id(3829056087629922)
,p_error_template=>wwv_flow_api.id(3822681339629917)
,p_printer_friendly_template=>wwv_flow_api.id(3833404958629927)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(3822681339629917)
,p_default_button_template=>wwv_flow_api.id(3914709239629994)
,p_default_region_template=>wwv_flow_api.id(3862609736629950)
,p_default_chart_template=>wwv_flow_api.id(3862609736629950)
,p_default_form_template=>wwv_flow_api.id(3862609736629950)
,p_default_reportr_template=>wwv_flow_api.id(3862609736629950)
,p_default_tabform_template=>wwv_flow_api.id(3862609736629950)
,p_default_wizard_template=>wwv_flow_api.id(3862609736629950)
,p_default_menur_template=>wwv_flow_api.id(3871991187629955)
,p_default_listr_template=>wwv_flow_api.id(3862609736629950)
,p_default_irr_template=>wwv_flow_api.id(3861443286629949)
,p_default_report_template=>wwv_flow_api.id(3886882975629968)
,p_default_label_template=>wwv_flow_api.id(3914210361629992)
,p_default_menu_template=>wwv_flow_api.id(3915522238629994)
,p_default_calendar_template=>wwv_flow_api.id(3915538902629996)
,p_default_list_template=>wwv_flow_api.id(3902634623629980)
,p_default_nav_list_template=>wwv_flow_api.id(3910044687629986)
,p_default_top_nav_list_temp=>wwv_flow_api.id(3910044687629986)
,p_default_side_nav_list_temp=>wwv_flow_api.id(3908065233629984)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(3842117169629938)
,p_default_dialogr_template=>wwv_flow_api.id(3841050155629937)
,p_default_option_label=>wwv_flow_api.id(3914210361629992)
,p_default_required_label=>wwv_flow_api.id(3914494991629992)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(3907851515629984)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3915900697629999)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3916031536630000)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3916311278630000)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3916449166630000)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3916714134630000)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3838182691629936)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3838622619629936)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3839194932629936)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3839587256629936)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3842931848629938)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3843329260629938)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3845180864629940)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3845967694629940)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3847213528629941)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3848410315629942)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3848733100629942)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3850811645629943)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3854141971629945)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3856541633629946)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3857334641629947)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3858476733629947)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3860407642629948)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3870227993629954)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3870675836629954)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3871521682629955)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3873597631629956)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3874801984629958)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3875146156629958)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3877131065629959)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3879016115629961)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3880762705629962)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3881548875629963)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3883572334629965)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3885422518629967)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3887212200629968)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3887786040629968)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3888155375629969)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3890202223629970)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3893927009629975)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3895149969629976)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3896392486629976)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3898135181629978)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3900214399629979)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3900776474629979)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3903785862629981)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3905585144629982)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3911331345629987)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3911992312629988)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3912970683629989)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3914968198629994)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3917069562630011)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3917465338630012)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3917875795630012)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3918299678630013)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3919296344630013)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3920302561630014)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3920667635630014)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3921066524630014)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3921923680630014)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3922897483630015)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3923920285630016)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3924257265630016)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3924625185630016)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3925084096630016)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3925505023630016)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3925913779630016)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3926276057630017)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3926881738630017)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3927665581630017)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3928058958630018)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3928700099630018)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3929656291630018)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3930647733630019)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3931666195630019)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3932670217630020)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3934317712630021)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3934680331630021)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3819487837629914)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3816790095629904)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3822589481629917)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3819525938629914)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3826511957629920)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3823460965629917)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3829023891629921)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3826529718629920)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3830283773629922)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(3829056087629922)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3830513293629922)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(3829056087629922)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3833245177629927)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3830602050629922)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3835743300629929)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(3833404958629927)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3837064172629931)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(3835833689629929)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3837306905629931)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(3835833689629929)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3837963757629935)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3838364733629936)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(3838182691629936)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3838748749629936)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(3838622619629936)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3838999140629936)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(3838622619629936)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3839331470629936)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(3839194932629936)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3839776895629936)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(3839587256629936)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3839960516629936)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(3838182691629936)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3840136025629936)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(3839194932629936)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3840396087629937)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(3838182691629936)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3840580794629937)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(3839194932629936)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3840799771629937)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(3838182691629936)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3840983595629937)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3837402105629931)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(3839587256629936)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3843216759629938)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3842117169629938)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3843612700629938)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(3842117169629938)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(3843329260629938)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3843762652629938)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(3842117169629938)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3844001186629938)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(3842117169629938)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(3843329260629938)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3844150760629939)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3842117169629938)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3845400694629940)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(3845180864629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3845565627629940)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(3845180864629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3845727843629940)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(3845180864629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3846143468629940)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3846421909629941)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3846607250629941)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3846795915629941)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(3845180864629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3846969497629941)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3847386592629941)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3847574867629941)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3847754156629941)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3848015494629941)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3848155317629942)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3848559969629942)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(3848410315629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3848954484629942)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3849165392629942)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(3848410315629942)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3849401855629942)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3849591316629942)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3849758418629942)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3849976469629943)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3850138361629943)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3850374449629943)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3850569231629943)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3850999022629943)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(3850811645629943)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3851180044629943)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(3850811645629943)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3851411660629943)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3844228697629939)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3852377802629944)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3852607714629944)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3852803653629944)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3852978693629944)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3853180438629944)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3853420858629944)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3853556996629944)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3853788322629945)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3853936639629945)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3854417074629945)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(3854141971629945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3854541356629945)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(3854141971629945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3854743800629945)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3854963944629945)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3855212007629945)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3855388650629945)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3855551392629946)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3855802066629946)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3855944154629946)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3851500338629943)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3856333924629946)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3856763247629946)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(3856541633629946)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3857015591629946)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(3856541633629946)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3857165086629946)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(3856541633629946)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3857612640629947)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(3857334641629947)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3857783169629947)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3856069743629946)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(3857334641629947)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3858680613629948)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3857860766629947)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(3858476733629947)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3858845629629948)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3857860766629947)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3859031155629948)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3857860766629947)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3859318027629948)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3857860766629947)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3859933961629948)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3860199481629948)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3860599900629949)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(3860407642629948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3860818284629949)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(3860407642629948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3860980283629949)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3861218623629949)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3861350337629949)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3859374387629948)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(3860407642629948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3861773660629949)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3861443286629949)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3861994626629949)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3861443286629949)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3863493215629950)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3863710568629951)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3863860720629951)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3864078180629951)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3845967694629940)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3864284166629951)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3864491963629951)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3864664328629951)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3864842944629951)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3865089314629952)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3865311078629952)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3865482679629952)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3865687717629952)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3865916005629952)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3866069543629952)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3866298125629952)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3866462558629952)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3866662654629952)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3866921520629952)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3867030086629952)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(3847213528629941)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3867317177629952)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(3848410315629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3867505417629953)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3867663791629953)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(3848410315629942)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3867864197629953)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3868104784629953)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3868265380629953)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3868430771629953)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3848733100629942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3868693685629953)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3868918210629953)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3869049628629954)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3869245558629954)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3862609736629950)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(3842931848629938)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3870463783629954)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(3870227993629954)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3870867888629954)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(3870675836629954)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3871029048629954)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3871246367629955)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(3870675836629954)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3871677758629955)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(3871521682629955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3871924138629955)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3869371804629954)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(3871521682629955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3872279968629955)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3871991187629955)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(3856541633629946)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3872473211629955)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3871991187629955)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3872626747629955)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3871991187629955)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(3856541633629946)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3872877008629956)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3871991187629955)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3873738773629956)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3872990294629956)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(3873597631629956)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3874013805629956)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3872990294629956)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(3873597631629956)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3874186951629956)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3872990294629956)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3874951133629958)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(3874801984629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3875406183629958)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3875605109629958)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(3874801984629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3875771100629959)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876004557629959)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(3874801984629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876171855629959)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876360370629959)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876611282629959)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(3874801984629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876789234629959)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(3874801984629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3876926026629959)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3877414845629960)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3877603212629960)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3877783683629960)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3877973678629960)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3878194033629960)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3878418405629960)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3874424672629958)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3878756868629961)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3879147642629961)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(3879016115629961)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3879363512629961)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3879570483629961)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(3879016115629961)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3879761652629961)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3879980236629962)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(3879016115629961)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3880142143629962)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3880353411629962)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3880606186629962)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3881007154629962)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(3880762705629962)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3881215495629962)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(3880762705629962)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3881400721629962)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3881807733629963)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(3881548875629963)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882021199629964)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(3881548875629963)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882153940629964)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882403140629964)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882577613629964)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882735128629964)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(3879016115629961)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3882998039629965)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3883216986629965)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3878431308629960)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3883805826629965)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3883255789629965)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(3883572334629965)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3884007919629966)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3883255789629965)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(3883572334629965)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3884405386629966)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3884576345629966)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3884774306629966)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3884966940629966)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3885210957629967)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3885582221629967)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(3885422518629967)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3885782370629967)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3885981309629967)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3886199535629967)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3886394072629967)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3886589390629967)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(3884078476629966)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3887343022629968)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(3887212200629968)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3887559239629968)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(3887212200629968)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3887966480629969)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(3887786040629968)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3888420504629969)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(3888155375629969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3888543920629969)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(3888155375629969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3888812977629969)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(3888155375629969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3888969201629969)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(3887786040629968)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3889139516629970)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3889420007629970)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3886882975629968)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(3888155375629969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3889787543629970)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(3889496455629970)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(3877131065629959)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3890384570629970)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3890554991629971)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3890765036629971)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3891015098629971)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3891172744629971)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3891423372629971)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3891612466629971)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3891736865629972)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3889893083629970)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3892205708629972)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3892388830629972)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3892591490629972)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3892822470629972)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3893017468629972)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(3875146156629958)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3893177573629972)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3893391888629972)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3893576046629972)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3891920701629972)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(3890202223629970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3894157535629975)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3894374814629975)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3894585300629975)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3894748893629975)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3894963829629976)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3895422111629976)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3895562207629976)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3895736561629976)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3895998687629976)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3896139411629976)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3896579421629976)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(3896392486629976)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3896773804629976)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(3896392486629976)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3897010937629976)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(3896392486629976)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3897153486629976)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3897380133629977)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(3896392486629976)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3897604757629977)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3893682598629973)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(3896392486629976)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3897979684629977)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3898354292629978)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(3898135181629978)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3898591810629978)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3898756968629978)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(3898135181629978)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3898954506629978)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3899125843629978)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(3898135181629978)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3899379589629978)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3899570662629978)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3899787195629978)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3900001918629978)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3900414583629979)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(3900214399629979)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3900569156629979)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3900965509629979)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(3900776474629979)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3901151190629979)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(3900776474629979)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3901350973629979)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3901529568629980)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3901783899629980)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3901981481629980)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(3898135181629978)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3902147615629980)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(3900214399629979)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3902409349629980)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3902565496629980)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3897627150629977)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3903003733629981)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3903192942629981)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3903355931629981)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3903587171629981)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3903989937629981)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(3903785862629981)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3904138904629981)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3902634623629980)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(3903785862629981)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3904586022629982)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3904746800629982)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3904931846629982)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3905185406629982)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3905399126629982)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3905783588629982)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(3905585144629982)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3905949774629982)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3906181236629982)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3906360870629982)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3906561211629982)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3904253010629981)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3907012756629983)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3906718733629982)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3907174393629983)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3906718733629982)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3907348613629984)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3906718733629982)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3907608271629984)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3906718733629982)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3908337045629985)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3908065233629984)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3908809006629986)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(3900776474629979)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909019637629986)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(3893927009629975)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909156757629986)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(3900776474629979)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909414389629986)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(3905585144629982)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909562882629986)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909803189629986)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(3895149969629976)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3909997156629986)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(3908502742629986)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(3905585144629982)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3910342627629987)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3910044687629986)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3910571382629987)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3910044687629986)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3910761320629987)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3910044687629986)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3911014222629987)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3910044687629986)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3911599268629987)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3911074218629987)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(3911331345629987)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3911780694629988)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3911074218629987)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(3911331345629987)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3912140221629988)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3911074218629987)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(3911992312629988)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3912369858629989)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3911074218629987)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(3911992312629988)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3912600227629989)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3911074218629987)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(3911992312629988)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3913155850629990)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3912630664629989)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(3912970683629989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3913351133629990)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3912630664629989)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(3912970683629989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3913596500629990)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3912630664629989)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(3912970683629989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3913751027629990)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3912630664629989)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3915181039629994)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(3914764419629994)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(3914968198629994)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3915406042629994)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(3914764419629994)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(3914968198629994)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3917288956630012)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(3917069562630011)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3917671019630012)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(3917465338630012)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3918057311630012)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(3917875795630012)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3918426852630013)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(3918299678630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3918674558630013)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(3918299678630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3918889053630013)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(3918299678630013)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3919041354630013)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(3918299678630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3919517364630013)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(3919296344630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3919670948630013)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(3919296344630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3919858967630014)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(3919296344630013)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3920065089630014)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(3919296344630013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3920437532630014)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(3920302561630014)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3920862766630014)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(3920667635630014)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3921271604630014)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(3921066524630014)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3921477598630014)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(3921066524630014)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3921673209630014)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(3920667635630014)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3922075953630015)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(3921923680630014)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3922249464630015)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(3921923680630014)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3922430309630015)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(3921923680630014)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3922628447630015)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(3921923680630014)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3923118406630015)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(3922897483630015)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3923315064630015)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(3922897483630015)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3923428675630015)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(3922897483630015)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3923633035630015)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(3922897483630015)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3924073641630016)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(3923920285630016)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3924469363630016)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(3924257265630016)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3924887501630016)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(3924625185630016)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3925245146630016)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(3925084096630016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3925637259630016)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(3925505023630016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3926041471630016)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(3925913779630016)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3926509246630017)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(3926276057630017)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3926628274630017)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(3917465338630012)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3927083662630017)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(3926881738630017)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3927300200630017)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(3926881738630017)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3927448126630017)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(3926881738630017)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3927847391630018)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(3927665581630017)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3928261249630018)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(3928058958630018)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3928452962630018)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(3917069562630011)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3928845517630018)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(3928700099630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3929078378630018)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(3928700099630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3929283286630018)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(3928700099630018)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3929483914630018)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(3928700099630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3929876703630018)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(3929656291630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3930116484630018)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(3929656291630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3930290205630019)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(3929656291630018)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3930478179630019)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(3929656291630018)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3930923884630019)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(3930647733630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3931107401630019)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(3930647733630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3931317293630019)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(3930647733630019)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3931467775630019)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(3930647733630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3931839727630020)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(3931666195630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3932119461630020)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(3931666195630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3932273597630020)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(3931666195630019)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3932507851630020)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(3931666195630019)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3932915795630020)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(3932670217630020)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3933112706630020)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(3917465338630012)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3933241655630020)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(3924257265630016)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3933439509630020)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(3924625185630016)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3933673778630020)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(3925084096630016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3933842606630020)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(3925505023630016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3934102555630021)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(3925913779630016)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3934515621630021)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(3934317712630021)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3934896442630021)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(3934680331630021)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3935081422630022)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3935279922630022)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(3917069562630011)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3935511458630022)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(3924257265630016)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3935720814630022)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(3917069562630011)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3935890965630022)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(3926276057630017)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(2420187596677759)
,p_translation_flow_id=>1801
,p_translation_flow_language_cd=>'de'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(2420264575679157)
,p_translation_flow_id=>1802
,p_translation_flow_language_cd=>'fr'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(2420389281680653)
,p_translation_flow_id=>1803
,p_translation_flow_language_cd=>'hr'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(2430136129681821)
,p_translation_flow_id=>1804
,p_translation_flow_language_cd=>'sl'
,p_direction_right_to_left=>'N'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440116723697112)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>1.1803
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440254149697112)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>2.1803
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440399094697112)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>4.1803
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440446540697112)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>3.1803
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440566469697112)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>9999.1803
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440680694697112)
,p_page_id=>0
,p_translated_flow_id=>1803
,p_translate_to_id=>.1803
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440765333697115)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>1.1803
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440878104697115)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>2.1803
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2440906123697115)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>4.1803
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441052782697115)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>3.1803
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441111648697115)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>9999.1803
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App - Sign In'
,p_translate_from_text=>'My Demo App - Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441224905697115)
,p_page_id=>0
,p_translated_flow_id=>1803
,p_translate_to_id=>.1803
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441396376697125)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982369109732274.1803)
,p_translate_from_id=>wwv_flow_api.id(3982369109732274)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Generate'
,p_translate_from_text=>'Generate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441443447697125)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3943591099630092.1803)
,p_translate_from_id=>wwv_flow_api.id(3943591099630092)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign In'
,p_translate_from_text=>'Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441531568697125)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981637600732267.1803)
,p_translate_from_id=>wwv_flow_api.id(3981637600732267)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Employee'
,p_translate_from_text=>'Add Employee'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441690058697125)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981526318732266.1803)
,p_translate_from_id=>wwv_flow_api.id(3981526318732266)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Department'
,p_translate_from_text=>'Add Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441771439697128)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441897802697128)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1803)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2441974454697128)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442035971697128)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1803)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442183297697128)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1803)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Language'
,p_translate_from_text=>'Translation Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442259753697128)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1803)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Page ID'
,p_translate_from_text=>'Page ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442367755697128)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1803)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442412725697128)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1803)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'App Language'
,p_translate_from_text=>'App Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442581451697128)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1803)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442609520697139)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1803)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442703799697139)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1803)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442850538697139)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1803)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2442933860697139)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1803)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Lang display'
,p_translate_from_text=>'Lang display'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443046434697139)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1803)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Generate Translation SQL'
,p_translate_from_text=>'Generate Translation SQL'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443131286697139)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1803)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'About'
,p_translate_from_text=>'About'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443264547697139)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1803)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Language Selector'
,p_translate_from_text=>'Language Selector'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443383319697142)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1803)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443405799697142)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1803)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
,p_translate_from_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443508234697142)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1803)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443629078697142)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1803)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443701587697142)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1803)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443872606697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3950818416644710.1803)
,p_translate_from_id=>wwv_flow_api.id(3950818416644710)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2443932032697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3948798018630113.1803)
,p_translate_from_id=>wwv_flow_api.id(3948798018630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444014334697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3946710632630100.1803)
,p_translate_from_id=>wwv_flow_api.id(3946710632630100)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444115726697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3949171444630114.1803)
,p_translate_from_id=>wwv_flow_api.id(3949171444630114)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign Out'
,p_translate_from_text=>'Sign Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444256330697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(4091295504373099.1803)
,p_translate_from_id=>wwv_flow_api.id(4091295504373099)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444331124697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3959767166648772.1803)
,p_translate_from_id=>wwv_flow_api.id(3959767166648772)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444433362697153)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1803)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444518431697220)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444627337697225)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444796450697228)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444816471697232)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2444929557697234)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445000442697235)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445139978697239)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445264613697240)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445382370697242)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445452859697250)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3939649176630065.1803)
,p_translate_from_id=>wwv_flow_api.id(3939649176630065)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Would you like to perform this delete action?'
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445558064697253)
,p_translated_flow_id=>1803
,p_translate_to_id=>180.1803
,p_translate_from_id=>180
,p_translate_column_id=>80
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445630205697285)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3816161363629896.1803)
,p_translate_from_id=>wwv_flow_api.id(3816161363629896)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445786107697290)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3989097120763159.1803)
,p_translate_from_id=>wwv_flow_api.id(3989097120763159)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hrvatski'
,p_translate_from_text=>'Hrvatski'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445843655697290)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3990308395763160.1803)
,p_translate_from_id=>wwv_flow_api.id(3990308395763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Fran\00E7ais')
,p_translate_from_text=>unistr('Fran\00E7ais')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2445924348697290)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3989855967763160.1803)
,p_translate_from_id=>wwv_flow_api.id(3989855967763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'English'
,p_translate_from_text=>'English'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446076515697292)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3942231007630089.1803)
,p_translate_from_id=>wwv_flow_api.id(3942231007630089)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446165536697292)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3989435131763160.1803)
,p_translate_from_id=>wwv_flow_api.id(3989435131763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Deutsch'
,p_translate_from_text=>'Deutsch'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446223466697306)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1803)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446331406697309)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1803)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446496770697542)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1803)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insufficient privileges, user is not an Administrator'
,p_translate_from_text=>'Insufficient privileges, user is not an Administrator'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446549194697562)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446673984697562)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1803)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446754057697562)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446887585697562)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1803)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2446965915697562)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1803)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447064696697562)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1803)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447148319697562)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1803)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447246819697562)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1803)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SUBMIT'
,p_translate_from_text=>'SUBMIT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447370063697562)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1803)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447425209697564)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447540543697564)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1803)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447643969697564)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447726633697564)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1803)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447825471697564)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1803)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2447911001697564)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1803)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448004677697564)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1803)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448149104697565)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1803)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448239754697567)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448371326697568)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1803)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448401178697568)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1803)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448547672697568)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1803)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448677888697568)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448743834697570)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1803)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448839687697570)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2448994482697570)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1803)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449023485697570)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1803)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449128018697581)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3945184294630094.1803)
,p_translate_from_id=>wwv_flow_api.id(3945184294630094)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449228371697618)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3813593861629890.1803)
,p_translate_from_id=>wwv_flow_api.id(3813593861629890)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449302191697618)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3815420758629892.1803)
,p_translate_from_id=>wwv_flow_api.id(3815420758629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449484367697618)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3813916793629891.1803)
,p_translate_from_id=>wwv_flow_api.id(3813916793629891)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449595605697618)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1803)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449687486697618)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3814769154629892.1803)
,p_translate_from_id=>wwv_flow_api.id(3814769154629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449796485697621)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1803)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449818038697626)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1803)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH'
,p_translate_from_text=>'SWITCH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2449991233697635)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1803)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450059090697635)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1803)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450122158697637)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1803)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450210783697639)
,p_page_id=>1
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1803)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450363997697639)
,p_page_id=>4
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1803)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450491802697639)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1803)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450507066697640)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1803)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450686466697700)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1803)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450713425697765)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1803)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450824774697800)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2450998062697800)
,p_page_id=>9999
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1803)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451051374697803)
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3936590194630027.1803)
,p_translate_from_id=>wwv_flow_api.id(3936590194630027)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451165884697839)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Naziv odjela'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451254702697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'First Name'
,p_translate_from_text=>'First Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451387593697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3956583514644758.1803)
,p_translate_from_id=>wwv_flow_api.id(3956583514644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Job'
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451402905697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3958985970644760.1803)
,p_translate_from_id=>wwv_flow_api.id(3958985970644760)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451596649697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1803)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employee ID'
,p_translate_from_text=>'Employee ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451654848697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1803)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'E-mail'
,p_translate_from_text=>'E-mail'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451725576697839)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3963744436648776.1803)
,p_translate_from_id=>wwv_flow_api.id(3963744436648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Lokacija'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451838005697839)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID odjela'
,p_translate_from_text=>'Department ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2451903192697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1803)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Commission Pct.'
,p_translate_from_text=>'Commission Pct.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452064803697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3958372059644759.1803)
,p_translate_from_id=>wwv_flow_api.id(3958372059644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452178640697839)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3963143911648776.1803)
,p_translate_from_id=>wwv_flow_api.id(3963143911648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Voditelj'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452284182697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Phone Number'
,p_translate_from_text=>'Phone Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452389318697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1803)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salary'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452425194697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1803)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hire Date'
,p_translate_from_text=>'Hire Date'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452503341697839)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Last Name'
,p_translate_from_text=>'Last Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452676204697842)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452736091697842)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3961369330648774.1803)
,p_translate_from_id=>wwv_flow_api.id(3961369330648774)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452809116697842)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2452905743697842)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3952379174644747.1803)
,p_translate_from_id=>wwv_flow_api.id(3952379174644747)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453061495697842)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453186886697842)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453205506697843)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453327573697843)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453472020697843)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453587704697843)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453634184697846)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453716878697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453846600697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1803)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2453998628697846)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454046541697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1803)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454192813697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454267270697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1803)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454387912697846)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454463309697848)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454540735697848)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454625491697848)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454729618697850)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1803)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454811703697850)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2454914537697851)
,p_page_id=>3
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1803)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455074228697851)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455152808697851)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1803)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455231215697851)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1803)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455377247697851)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1803)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455439405697851)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1803)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455585241697857)
,p_page_id=>2
,p_translated_flow_id=>1803
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1803)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>428
,p_translate_to_lang_code=>'hr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455623410697973)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>1.1802
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455714107697973)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>2.1802
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455824775697973)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>4.1802
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2455965742697973)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>3.1802
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456020976697973)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>9999.1802
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456105562697973)
,p_page_id=>0
,p_translated_flow_id=>1802
,p_translate_to_id=>.1802
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456299210697975)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>1.1802
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456306788697975)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>2.1802
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456474805697975)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>4.1802
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456590035697975)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>3.1802
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456652366697975)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>9999.1802
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App - Sign In'
,p_translate_from_text=>'My Demo App - Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456797717697975)
,p_page_id=>0
,p_translated_flow_id=>1802
,p_translate_to_id=>.1802
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456856861697984)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982369109732274.1802)
,p_translate_from_id=>wwv_flow_api.id(3982369109732274)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Generate'
,p_translate_from_text=>'Generate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2456908481697984)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3943591099630092.1802)
,p_translate_from_id=>wwv_flow_api.id(3943591099630092)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign In'
,p_translate_from_text=>'Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457067994697984)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981637600732267.1802)
,p_translate_from_id=>wwv_flow_api.id(3981637600732267)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Employee'
,p_translate_from_text=>'Add Employee'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457103799697984)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981526318732266.1802)
,p_translate_from_id=>wwv_flow_api.id(3981526318732266)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Department'
,p_translate_from_text=>'Add Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457251573697985)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457393681697985)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1802)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457485671697985)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457596489697985)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1802)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457687660697985)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1802)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Language'
,p_translate_from_text=>'Translation Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457789432697985)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1802)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Page ID'
,p_translate_from_text=>'Page ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457825706697985)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1802)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2457941707697985)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1802)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'App Language'
,p_translate_from_text=>'App Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458023110697987)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1802)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458100167697995)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1802)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458200671697995)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1802)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458339636697995)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1802)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458402883697995)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1802)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Lang display'
,p_translate_from_text=>'Lang display'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458531032697995)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1802)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Generate Translation SQL'
,p_translate_from_text=>'Generate Translation SQL'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458676858697996)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1802)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'About'
,p_translate_from_text=>'About'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458777041697996)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1802)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Language Selector'
,p_translate_from_text=>'Language Selector'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458870697697998)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1802)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2458923202697998)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1802)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
,p_translate_from_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459082495697998)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1802)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459192831697998)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1802)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459265747697998)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1802)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459333755698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3950818416644710.1802)
,p_translate_from_id=>wwv_flow_api.id(3950818416644710)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459456530698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3948798018630113.1802)
,p_translate_from_id=>wwv_flow_api.id(3948798018630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459599490698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3946710632630100.1802)
,p_translate_from_id=>wwv_flow_api.id(3946710632630100)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459611795698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3949171444630114.1802)
,p_translate_from_id=>wwv_flow_api.id(3949171444630114)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign Out'
,p_translate_from_text=>'Sign Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459712080698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(4091295504373099.1802)
,p_translate_from_id=>wwv_flow_api.id(4091295504373099)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459852200698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3959767166648772.1802)
,p_translate_from_id=>wwv_flow_api.id(3959767166648772)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2459932690698009)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1802)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460040555698070)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460106125698076)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460228685698078)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460353468698082)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460495287698085)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460525679698087)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460626677698089)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460745852698090)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460891159698092)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2460935910698100)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3939649176630065.1802)
,p_translate_from_id=>wwv_flow_api.id(3939649176630065)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Would you like to perform this delete action?'
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461099538698101)
,p_translated_flow_id=>1802
,p_translate_to_id=>180.1802
,p_translate_from_id=>180
,p_translate_column_id=>80
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461180137698132)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3816161363629896.1802)
,p_translate_from_id=>wwv_flow_api.id(3816161363629896)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461234295698139)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3989097120763159.1802)
,p_translate_from_id=>wwv_flow_api.id(3989097120763159)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hrvatski'
,p_translate_from_text=>'Hrvatski'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461387834698139)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3990308395763160.1802)
,p_translate_from_id=>wwv_flow_api.id(3990308395763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Fran\00E7ais')
,p_translate_from_text=>unistr('Fran\00E7ais')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461460309698139)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3989855967763160.1802)
,p_translate_from_id=>wwv_flow_api.id(3989855967763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'English'
,p_translate_from_text=>'English'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461561439698139)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3942231007630089.1802)
,p_translate_from_id=>wwv_flow_api.id(3942231007630089)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461642883698139)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3989435131763160.1802)
,p_translate_from_id=>wwv_flow_api.id(3989435131763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Deutsch'
,p_translate_from_text=>'Deutsch'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461788859698153)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1802)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461845721698154)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1802)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2461963878698396)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1802)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insufficient privileges, user is not an Administrator'
,p_translate_from_text=>'Insufficient privileges, user is not an Administrator'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462074583698417)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462123160698417)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1802)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462246737698417)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462319345698417)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1802)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462407774698417)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1802)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462501491698417)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1802)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462647158698417)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1802)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462769710698417)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1802)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SUBMIT'
,p_translate_from_text=>'SUBMIT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462879227698417)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1802)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2462970168698418)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463021635698418)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1802)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463100950698418)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463224654698418)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1802)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463342396698418)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1802)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463498567698418)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1802)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463500601698418)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1802)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463666887698421)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1802)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463728904698421)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463884899698423)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1802)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2463920196698423)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1802)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464063524698423)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1802)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464185370698423)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464257291698425)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1802)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464307902698425)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464452252698425)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1802)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464505090698425)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1802)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464678042698435)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3945184294630094.1802)
,p_translate_from_id=>wwv_flow_api.id(3945184294630094)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464742030698471)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3813593861629890.1802)
,p_translate_from_id=>wwv_flow_api.id(3813593861629890)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464863835698471)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3815420758629892.1802)
,p_translate_from_id=>wwv_flow_api.id(3815420758629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2464980573698471)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3813916793629891.1802)
,p_translate_from_id=>wwv_flow_api.id(3813916793629891)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465018746698471)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1802)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465194312698471)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3814769154629892.1802)
,p_translate_from_id=>wwv_flow_api.id(3814769154629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465255477698475)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1802)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465304397698478)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1802)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH'
,p_translate_from_text=>'SWITCH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465450050698489)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1802)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465594926698489)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1802)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465621464698489)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1802)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465722074698490)
,p_page_id=>1
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1802)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465875050698490)
,p_page_id=>4
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1802)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2465958183698490)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1802)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466059281698493)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1802)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466185267698550)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1802)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466214388698612)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1802)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466336048698645)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466439099698645)
,p_page_id=>9999
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1802)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466577958698646)
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3936590194630027.1802)
,p_translate_from_id=>wwv_flow_api.id(3936590194630027)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466692927698682)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466709578698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'First Name'
,p_translate_from_text=>'First Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466855327698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3956583514644758.1802)
,p_translate_from_id=>wwv_flow_api.id(3956583514644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Job'
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2466911760698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3958985970644760.1802)
,p_translate_from_id=>wwv_flow_api.id(3958985970644760)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467049452698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1802)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employee ID'
,p_translate_from_text=>'Employee ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467165946698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1802)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'E-mail'
,p_translate_from_text=>'E-mail'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467285318698682)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3963744436648776.1802)
,p_translate_from_id=>wwv_flow_api.id(3963744436648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467379588698682)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department ID'
,p_translate_from_text=>'Department ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467432371698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1802)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Commission Pct.'
,p_translate_from_text=>'Commission Pct.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467579187698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3958372059644759.1802)
,p_translate_from_id=>wwv_flow_api.id(3958372059644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467673503698682)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3963143911648776.1802)
,p_translate_from_id=>wwv_flow_api.id(3963143911648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467786942698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Phone Number'
,p_translate_from_text=>'Phone Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467865554698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1802)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salary'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2467915132698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1802)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hire Date'
,p_translate_from_text=>'Hire Date'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468045830698682)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Last Name'
,p_translate_from_text=>'Last Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468148379698684)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468202238698684)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3961369330648774.1802)
,p_translate_from_id=>wwv_flow_api.id(3961369330648774)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468383956698684)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468489609698684)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3952379174644747.1802)
,p_translate_from_id=>wwv_flow_api.id(3952379174644747)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468506840698684)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468656431698684)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468744957698687)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468885323698687)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2468907270698687)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469004794698687)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469163896698689)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469227849698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469396685698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1802)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469429029698689)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469565754698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1802)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469658715698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469786200698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1802)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469894113698689)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2469921225698690)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470000327698690)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470100033698690)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470284639698690)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1802)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470314596698690)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470493595698693)
,p_page_id=>3
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1802)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470524926698693)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470692692698693)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1802)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470795577698693)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1802)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470855070698693)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1802)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2470973312698693)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1802)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471052800698696)
,p_page_id=>2
,p_translated_flow_id=>1802
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1802)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>428
,p_translate_to_lang_code=>'fr'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471197290698789)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>1.1801
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471281004698789)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>2.1801
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471371522698789)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>4.1801
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471497424698789)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>3.1801
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471522916698789)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>9999.1801
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471641825698789)
,p_page_id=>0
,p_translated_flow_id=>1801
,p_translate_to_id=>.1801
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471731306698790)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>1.1801
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471815735698790)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>2.1801
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2471928442698790)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>4.1801
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472031411698790)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>3.1801
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472138401698790)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>9999.1801
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App - Sign In'
,p_translate_from_text=>'My Demo App - Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472256670698790)
,p_page_id=>0
,p_translated_flow_id=>1801
,p_translate_to_id=>.1801
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472343980698800)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982369109732274.1801)
,p_translate_from_id=>wwv_flow_api.id(3982369109732274)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Generate'
,p_translate_from_text=>'Generate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472451284698800)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3943591099630092.1801)
,p_translate_from_id=>wwv_flow_api.id(3943591099630092)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign In'
,p_translate_from_text=>'Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472538538698800)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981637600732267.1801)
,p_translate_from_id=>wwv_flow_api.id(3981637600732267)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Employee'
,p_translate_from_text=>'Add Employee'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472638532698800)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981526318732266.1801)
,p_translate_from_id=>wwv_flow_api.id(3981526318732266)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Department'
,p_translate_from_text=>'Add Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472769441698801)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472844884698801)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1801)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2472959799698801)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473071338698801)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1801)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473115285698801)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1801)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Language'
,p_translate_from_text=>'Translation Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473268768698801)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1801)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Page ID'
,p_translate_from_text=>'Page ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473358443698801)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1801)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473475458698801)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1801)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'App Language'
,p_translate_from_text=>'App Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473580524698801)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1801)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473682522698810)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1801)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473799547698810)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1801)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473889646698810)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1801)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2473900702698810)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1801)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Lang display'
,p_translate_from_text=>'Lang display'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474018072698810)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1801)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Generate Translation SQL'
,p_translate_from_text=>'Generate Translation SQL'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474120222698810)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1801)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'About'
,p_translate_from_text=>'About'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474273744698810)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1801)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Language Selector'
,p_translate_from_text=>'Language Selector'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474361305698812)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1801)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474402085698814)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1801)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
,p_translate_from_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474599813698814)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1801)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474652220698814)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1801)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474789866698814)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1801)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474836706698823)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3950818416644710.1801)
,p_translate_from_id=>wwv_flow_api.id(3950818416644710)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2474930120698823)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3948798018630113.1801)
,p_translate_from_id=>wwv_flow_api.id(3948798018630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475084103698823)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3946710632630100.1801)
,p_translate_from_id=>wwv_flow_api.id(3946710632630100)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475110151698823)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3949171444630114.1801)
,p_translate_from_id=>wwv_flow_api.id(3949171444630114)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign Out'
,p_translate_from_text=>'Sign Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475240109698823)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(4091295504373099.1801)
,p_translate_from_id=>wwv_flow_api.id(4091295504373099)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475380538698825)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3959767166648772.1801)
,p_translate_from_id=>wwv_flow_api.id(3959767166648772)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475472235698825)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1801)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475525092698887)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475612598698893)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475732690698895)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475851152698901)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2475975474698903)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476035653698904)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476131771698906)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476281702698907)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476359767698910)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476451466698917)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3939649176630065.1801)
,p_translate_from_id=>wwv_flow_api.id(3939649176630065)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Would you like to perform this delete action?'
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476526167698918)
,p_translated_flow_id=>1801
,p_translate_to_id=>180.1801
,p_translate_from_id=>180
,p_translate_column_id=>80
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476620298698951)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3816161363629896.1801)
,p_translate_from_id=>wwv_flow_api.id(3816161363629896)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476793627698956)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3989097120763159.1801)
,p_translate_from_id=>wwv_flow_api.id(3989097120763159)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hrvatski'
,p_translate_from_text=>'Hrvatski'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476873283698956)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3990308395763160.1801)
,p_translate_from_id=>wwv_flow_api.id(3990308395763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Fran\00E7ais')
,p_translate_from_text=>unistr('Fran\00E7ais')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2476968069698956)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3989855967763160.1801)
,p_translate_from_id=>wwv_flow_api.id(3989855967763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'English'
,p_translate_from_text=>'English'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477072419698956)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3942231007630089.1801)
,p_translate_from_id=>wwv_flow_api.id(3942231007630089)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477114720698956)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3989435131763160.1801)
,p_translate_from_id=>wwv_flow_api.id(3989435131763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Deutsch'
,p_translate_from_text=>'Deutsch'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477203138698971)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1801)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477301751698973)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1801)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477467192699203)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1801)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insufficient privileges, user is not an Administrator'
,p_translate_from_text=>'Insufficient privileges, user is not an Administrator'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477502752699221)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477622935699221)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1801)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477722395699221)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477812290699221)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1801)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2477951866699221)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1801)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478000896699221)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1801)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478179300699221)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1801)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478213637699221)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1801)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SUBMIT'
,p_translate_from_text=>'SUBMIT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478399723699221)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1801)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478432782699225)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478509887699225)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1801)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478690145699225)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478705289699225)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1801)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478823993699225)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1801)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2478946533699225)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1801)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479059327699225)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1801)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479152459699226)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1801)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479264840699226)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479341353699228)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1801)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479420118699228)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1801)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479550395699228)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1801)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479671142699228)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479719457699231)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1801)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479893984699231)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2479955110699231)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1801)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480044493699231)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1801)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480197416699242)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3945184294630094.1801)
,p_translate_from_id=>wwv_flow_api.id(3945184294630094)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480272990699278)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3813593861629890.1801)
,p_translate_from_id=>wwv_flow_api.id(3813593861629890)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480391736699278)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3815420758629892.1801)
,p_translate_from_id=>wwv_flow_api.id(3815420758629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480493940699279)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3813916793629891.1801)
,p_translate_from_id=>wwv_flow_api.id(3813916793629891)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480576863699279)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1801)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480683233699279)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3814769154629892.1801)
,p_translate_from_id=>wwv_flow_api.id(3814769154629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480779693699282)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1801)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480855313699285)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1801)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH'
,p_translate_from_text=>'SWITCH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2480951576699298)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1801)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481032288699298)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1801)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481133469699298)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1801)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481210545699300)
,p_page_id=>1
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1801)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481349161699300)
,p_page_id=>4
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1801)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481447355699300)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1801)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481545036699301)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1801)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481688981699362)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1801)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481702036699426)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1801)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481869717699459)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2481997404699459)
,p_page_id=>9999
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1801)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482084327699460)
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3936590194630027.1801)
,p_translate_from_id=>wwv_flow_api.id(3936590194630027)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482164075699498)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482203831699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'First Name'
,p_translate_from_text=>'First Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482363265699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3956583514644758.1801)
,p_translate_from_id=>wwv_flow_api.id(3956583514644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Job'
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482474144699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3958985970644760.1801)
,p_translate_from_id=>wwv_flow_api.id(3958985970644760)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482564337699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1801)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employee ID'
,p_translate_from_text=>'Employee ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482601663699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1801)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'E-mail'
,p_translate_from_text=>'E-mail'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482746487699498)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3963744436648776.1801)
,p_translate_from_id=>wwv_flow_api.id(3963744436648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482831680699498)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department ID'
,p_translate_from_text=>'Department ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2482917822699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1801)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Commission Pct.'
,p_translate_from_text=>'Commission Pct.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483066264699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3958372059644759.1801)
,p_translate_from_id=>wwv_flow_api.id(3958372059644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483131964699498)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3963143911648776.1801)
,p_translate_from_id=>wwv_flow_api.id(3963143911648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483261580699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Phone Number'
,p_translate_from_text=>'Phone Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483374629699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1801)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salary'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483432453699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1801)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hire Date'
,p_translate_from_text=>'Hire Date'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483506932699498)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Last Name'
,p_translate_from_text=>'Last Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483622908699500)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483778549699500)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3961369330648774.1801)
,p_translate_from_id=>wwv_flow_api.id(3961369330648774)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483866652699500)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2483928357699500)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3952379174644747.1801)
,p_translate_from_id=>wwv_flow_api.id(3952379174644747)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484045379699500)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484182224699500)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484245452699503)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484363417699503)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484414469699503)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484595161699503)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484611070699504)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484715908699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484857732699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1801)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2484933241699504)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485097821699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1801)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485186807699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485240849699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1801)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485381236699504)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485449875699507)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485509865699507)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485677837699507)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485727140699507)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1801)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485844966699507)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2485983155699509)
,p_page_id=>3
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1801)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486098626699509)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486146204699509)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1801)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486247855699509)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1801)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486319138699509)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1801)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486462780699509)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1801)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486532406699512)
,p_page_id=>2
,p_translated_flow_id=>1801
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1801)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>428
,p_translate_to_lang_code=>'de'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486659957699603)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>1.1804
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486742843699603)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>2.1804
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486806563699603)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>4.1804
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2486934985699603)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>3.1804
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487054583699603)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>9999.1804
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487137814699603)
,p_page_id=>0
,p_translated_flow_id=>1804
,p_translate_to_id=>.1804
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487212438699604)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>1.1804
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487301238699604)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>2.1804
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487498725699604)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>4.1804
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487536799699604)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>3.1804
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487656866699604)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>9999.1804
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App - Sign In'
,p_translate_from_text=>'My Demo App - Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487722294699604)
,p_page_id=>0
,p_translated_flow_id=>1804
,p_translate_to_id=>.1804
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487882343699614)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982369109732274.1804)
,p_translate_from_id=>wwv_flow_api.id(3982369109732274)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Generate'
,p_translate_from_text=>'Generate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2487981969699614)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3943591099630092.1804)
,p_translate_from_id=>wwv_flow_api.id(3943591099630092)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign In'
,p_translate_from_text=>'Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488023205699614)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981637600732267.1804)
,p_translate_from_id=>wwv_flow_api.id(3981637600732267)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Employee'
,p_translate_from_text=>'Add Employee'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488115818699614)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981526318732266.1804)
,p_translate_from_id=>wwv_flow_api.id(3981526318732266)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Add Department'
,p_translate_from_text=>'Add Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488220122699615)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488306946699615)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1804)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488472127699615)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488509578699615)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1804)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488669868699615)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1804)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Language'
,p_translate_from_text=>'Translation Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488756052699615)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1804)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Page ID'
,p_translate_from_text=>'Page ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488881810699615)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1804)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2488956385699615)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1804)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'App Language'
,p_translate_from_text=>'App Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489007942699615)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1804)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489178511699625)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1804)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489246351699625)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1804)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489367261699625)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1804)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489468753699625)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1804)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Lang display'
,p_translate_from_text=>'Lang display'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489597471699625)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1804)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Generate Translation SQL'
,p_translate_from_text=>'Generate Translation SQL'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489663858699625)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1804)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'About'
,p_translate_from_text=>'About'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489741705699625)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1804)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Language Selector'
,p_translate_from_text=>'Language Selector'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489826699699626)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1804)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2489914871699628)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982015446732270.1804)
,p_translate_from_id=>wwv_flow_api.id(3982015446732270)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
,p_translate_from_text=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490090881699628)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3951149308644736.1804)
,p_translate_from_id=>wwv_flow_api.id(3951149308644736)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490123187699628)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3960156830648773.1804)
,p_translate_from_id=>wwv_flow_api.id(3960156830648773)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490246132699628)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3945440771630095.1804)
,p_translate_from_id=>wwv_flow_api.id(3945440771630095)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490330091699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3950818416644710.1804)
,p_translate_from_id=>wwv_flow_api.id(3950818416644710)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employees'
,p_translate_from_text=>'Employees'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490470137699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3948798018630113.1804)
,p_translate_from_id=>wwv_flow_api.id(3948798018630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490584478699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3946710632630100.1804)
,p_translate_from_id=>wwv_flow_api.id(3946710632630100)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490633264699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3949171444630114.1804)
,p_translate_from_id=>wwv_flow_api.id(3949171444630114)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign Out'
,p_translate_from_text=>'Sign Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490777031699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(4091295504373099.1804)
,p_translate_from_id=>wwv_flow_api.id(4091295504373099)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translation Util'
,p_translate_from_text=>'Translation Util'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490882716699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3959767166648772.1804)
,p_translate_from_id=>wwv_flow_api.id(3959767166648772)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Departments'
,p_translate_from_text=>'Departments'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2490925260699637)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1804)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491000460699698)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491148259699703)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491259886699704)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491374263699710)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491400250699712)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491586398699714)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491602316699715)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491710974699717)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491802007699720)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2491979861699726)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3939649176630065.1804)
,p_translate_from_id=>wwv_flow_api.id(3939649176630065)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Would you like to perform this delete action?'
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492060784699728)
,p_translated_flow_id=>1804
,p_translate_to_id=>180.1804
,p_translate_from_id=>180
,p_translate_column_id=>80
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'My Demo App'
,p_translate_from_text=>'My Demo App'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492194682699759)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3816161363629896.1804)
,p_translate_from_id=>wwv_flow_api.id(3816161363629896)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492224206699764)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3989097120763159.1804)
,p_translate_from_id=>wwv_flow_api.id(3989097120763159)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hrvatski'
,p_translate_from_text=>'Hrvatski'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492306954699765)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3990308395763160.1804)
,p_translate_from_id=>wwv_flow_api.id(3990308395763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Fran\00E7ais')
,p_translate_from_text=>unistr('Fran\00E7ais')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492459622699765)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3989855967763160.1804)
,p_translate_from_id=>wwv_flow_api.id(3989855967763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'English'
,p_translate_from_text=>'English'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492591642699765)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3942231007630089.1804)
,p_translate_from_id=>wwv_flow_api.id(3942231007630089)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492639841699765)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3989435131763160.1804)
,p_translate_from_id=>wwv_flow_api.id(3989435131763160)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Deutsch'
,p_translate_from_text=>'Deutsch'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492792614699779)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1804)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492813436699781)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3915637458629998.1804)
,p_translate_from_id=>wwv_flow_api.id(3915637458629998)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2492937855700007)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1804)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insufficient privileges, user is not an Administrator'
,p_translate_from_text=>'Insufficient privileges, user is not an Administrator'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493098739700026)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493175656700026)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1804)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493266785700026)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493334006700026)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1804)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493446481700026)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1804)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493551222700026)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1804)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493607961700026)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1804)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493798460700026)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1804)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SUBMIT'
,p_translate_from_text=>'SUBMIT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493859715700026)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3942641392630089.1804)
,p_translate_from_id=>wwv_flow_api.id(3942641392630089)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2493969293700029)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494063982700029)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1804)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494113941700029)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494224671700029)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1804)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494394100700029)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982150114732272.1804)
,p_translate_from_id=>wwv_flow_api.id(3982150114732272)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494410593700029)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982259303732273.1804)
,p_translate_from_id=>wwv_flow_api.id(3982259303732273)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494522434700029)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1804)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494640767700031)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981728677732268.1804)
,p_translate_from_id=>wwv_flow_api.id(3981728677732268)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494718996700031)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494803309700034)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1804)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2494988836700034)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1804)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495042753700034)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1804)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495105462700034)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495283611700035)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981360824732264.1804)
,p_translate_from_id=>wwv_flow_api.id(3981360824732264)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495392411700035)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495461562700035)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981482258732265.1804)
,p_translate_from_id=>wwv_flow_api.id(3981482258732265)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495543072700035)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3981268501732263.1804)
,p_translate_from_id=>wwv_flow_api.id(3981268501732263)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495628056700048)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3945184294630094.1804)
,p_translate_from_id=>wwv_flow_api.id(3945184294630094)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495786423700084)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3813593861629890.1804)
,p_translate_from_id=>wwv_flow_api.id(3813593861629890)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495818432700084)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3815420758629892.1804)
,p_translate_from_id=>wwv_flow_api.id(3815420758629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2495964646700084)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3813916793629891.1804)
,p_translate_from_id=>wwv_flow_api.id(3813916793629891)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496002172700084)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1804)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496114656700084)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3814769154629892.1804)
,p_translate_from_id=>wwv_flow_api.id(3814769154629892)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496216087700087)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1804)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496390816700092)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3814191737629892.1804)
,p_translate_from_id=>wwv_flow_api.id(3814191737629892)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH'
,p_translate_from_text=>'SWITCH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496420299700101)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1804)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496514217700101)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1804)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496688053700101)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1804)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496769418700104)
,p_page_id=>1
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3965554445665563.1804)
,p_translate_from_id=>wwv_flow_api.id(3965554445665563)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496871778700104)
,p_page_id=>4
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3982073052732271.1804)
,p_translate_from_id=>wwv_flow_api.id(3982073052732271)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2496967627700104)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1804)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497013892700106)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3940779190630083.1804)
,p_translate_from_id=>wwv_flow_api.id(3940779190630083)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497108343700164)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3939253681630063.1804)
,p_translate_from_id=>wwv_flow_api.id(3939253681630063)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497214912700226)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3948286982630113.1804)
,p_translate_from_id=>wwv_flow_api.id(3948286982630113)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497395528700259)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941124867630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941124867630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'username'
,p_translate_from_text=>'username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497428833700259)
,p_page_id=>9999
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3941552474630086.1804)
,p_translate_from_id=>wwv_flow_api.id(3941552474630086)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'password'
,p_translate_from_text=>'password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497586966700262)
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3936590194630027.1804)
,p_translate_from_id=>wwv_flow_api.id(3936590194630027)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497668012700296)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department Name'
,p_translate_from_text=>'Department Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497760496700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'First Name'
,p_translate_from_text=>'First Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497879358700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3956583514644758.1804)
,p_translate_from_id=>wwv_flow_api.id(3956583514644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Job'
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2497957191700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3958985970644760.1804)
,p_translate_from_id=>wwv_flow_api.id(3958985970644760)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498034534700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1804)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Employee ID'
,p_translate_from_text=>'Employee ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498168131700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1804)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'E-mail'
,p_translate_from_text=>'E-mail'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498274636700296)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3963744436648776.1804)
,p_translate_from_id=>wwv_flow_api.id(3963744436648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Location'
,p_translate_from_text=>'Location'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498314060700296)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Department ID'
,p_translate_from_text=>'Department ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498442357700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1804)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Commission Pct.'
,p_translate_from_text=>'Commission Pct.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498579843700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3958372059644759.1804)
,p_translate_from_id=>wwv_flow_api.id(3958372059644759)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498604465700296)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3963143911648776.1804)
,p_translate_from_id=>wwv_flow_api.id(3963143911648776)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Manager'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498775842700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Phone Number'
,p_translate_from_text=>'Phone Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498866864700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1804)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salary'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2498997047700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1804)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Hire Date'
,p_translate_from_text=>'Hire Date'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499076057700296)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Last Name'
,p_translate_from_text=>'Last Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499140562700300)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499253131700300)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3961369330648774.1804)
,p_translate_from_id=>wwv_flow_api.id(3961369330648774)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499317560700300)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499447861700300)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3952379174644747.1804)
,p_translate_from_id=>wwv_flow_api.id(3952379174644747)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499553187700300)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499658369700300)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499796941700301)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499841600700301)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2499939014700301)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500076345700301)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500185072700304)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500290046700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500380413700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3952938704644752.1804)
,p_translate_from_id=>wwv_flow_api.id(3952938704644752)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500468934700304)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3961942956648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3961942956648775)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500560940700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3957789673644759.1804)
,p_translate_from_id=>wwv_flow_api.id(3957789673644759)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500668912700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500717199700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3957185044644758.1804)
,p_translate_from_id=>wwv_flow_api.id(3957185044644758)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500839476700304)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2500991371700306)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501003271700306)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501171466700306)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501229380700306)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1804)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501334342700306)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501469639700307)
,p_page_id=>3
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3962590758648775.1804)
,p_translate_from_id=>wwv_flow_api.id(3962590758648775)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501500930700307)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3953577792644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3953577792644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501662231700307)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954796936644755.1804)
,p_translate_from_id=>wwv_flow_api.id(3954796936644755)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501779809700307)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955386911644756.1804)
,p_translate_from_id=>wwv_flow_api.id(3955386911644756)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501849597700309)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1804)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2501995666700309)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3954174362644754.1804)
,p_translate_from_id=>wwv_flow_api.id(3954174362644754)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(2502024228700312)
,p_page_id=>2
,p_translated_flow_id=>1804
,p_translate_to_id=>wwv_flow_api.id(3955969235644757.1804)
,p_translate_from_id=>wwv_flow_api.id(3955969235644757)
,p_translate_column_id=>428
,p_translate_to_lang_code=>'sl'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(4104651424485715)
,p_name=>'TRANS_MSG1'
,p_message_language=>'de'
,p_message_text=>'This is the default English text.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(4080923589403005)
,p_name=>'TRANS_MSG1'
,p_message_text=>'This is the default English text.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(4104337063485438)
,p_name=>'TRANS_MSG1'
,p_message_language=>'fr'
,p_message_text=>'This is the default English text.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(4081081383405606)
,p_name=>'TRANS_MSG1'
,p_message_language=>'hr'
,p_message_text=>'Ovo je osnovna hrvatska poruka.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(2510413023739068)
,p_name=>'TRANS_MSG1'
,p_message_language=>'sl'
,p_message_text=>'This is the default English text.'
,p_is_js_message=>true
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(3939649176630065)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(3815674022629895)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(3936590194630027)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(3816474318629898)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(3908065233629984)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(3936257787630026)
,p_nav_bar_list_template_id=>wwv_flow_api.id(3907851515629984)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20181011190742'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'My Demo App'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20191013134801'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3965554445665563)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3862609736629950)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a Demo App for APEX Translations.',
'<br />',
'<br />'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3982015446732270)
,p_plug_name=>'Lang display'
,p_parent_plug_id=>wwv_flow_api.id(3965554445665563)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3841050155629937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'htp.p(''App language is set to: <b>''||nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')||''</b>'');'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3981728677732268)
,p_name=>'P1_APP_LANG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3982015446732270)
,p_item_default=>'nvl(APEX_UTIL.GET_SESSION_LANG, ''en'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'App Language'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APP_LANG_LOV'
,p_lov=>'.'||wwv_flow_api.id(3988794349763157)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3981864076732269)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Lang'
,p_process_sql_clob=>'APEX_UTIL.SET_SESSION_LANG(:P1_APP_LANG);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Employees'
,p_step_title=>'Employees'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20181013130927'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3951149308644736)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3862609736629950)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       DEPARTMENT_ID',
'  from EMPLOYEES'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3952379174644747)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3952938704644752)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3953577792644754)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3954174362644754)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>25
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3954796936644755)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'E-mail'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>25
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3955386911644756)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3955969235644757)
,p_name=>'HIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIRE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Hire Date'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3956583514644758)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job_title, job_id',
'  from jobs'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3957185044644758)
,p_name=>'SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Salary'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3957789673644759)
,p_name=>'COMMISSION_PCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMISSION_PCT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commission Pct.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3958372059644759)
,p_name=>'MANAGER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_name, employee_id',
'  from employees',
' '))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3958985970644760)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select department_name, department_id',
'  from departments'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(3951716039644738)
,p_internal_uid=>1611491396995776
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(3952052560644743)
,p_interactive_grid_id=>wwv_flow_api.id(3951716039644738)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(3952143781644745)
,p_report_id=>wwv_flow_api.id(3952052560644743)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3952816406644749)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(3952379174644747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3953407615644753)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(3952938704644752)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3953961269644754)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(3953577792644754)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3954538493644755)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(3954174362644754)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3955201463644756)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(3954796936644755)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3955735402644757)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(3955386911644756)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3956357823644757)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(3955969235644757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3956936744644758)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(3956583514644758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3957582362644759)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(3957185044644758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3958168378644759)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(3957789673644759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3958760177644760)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(3958372059644759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3959387848644761)
,p_view_id=>wwv_flow_api.id(3952143781644745)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(3958985970644760)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3981637600732267)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3951149308644736)
,p_button_name=>'ADD_EMP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3914709239629994)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Employee'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Departments'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20181013130859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3960156830648773)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3862609736629950)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPARTMENT_ID,',
'       DEPARTMENT_NAME,',
'       MANAGER_ID,',
'       LOCATION_ID',
'  from DEPARTMENTS'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3961369330648774)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3961942956648775)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Department ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3962590758648775)
,p_name=>'DEPARTMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3963143911648776)
,p_name=>'MANAGER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_name, employee_id',
'  from employees'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(3963744436648776)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select city, location_id',
'  from locations'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(3960691820648773)
,p_internal_uid=>1620467177999811
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(3961092577648774)
,p_interactive_grid_id=>wwv_flow_api.id(3960691820648773)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(3961125624648774)
,p_report_id=>wwv_flow_api.id(3961092577648774)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3961814267648774)
,p_view_id=>wwv_flow_api.id(3961125624648774)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(3961369330648774)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3962333735648775)
,p_view_id=>wwv_flow_api.id(3961125624648774)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(3961942956648775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3962976848648776)
,p_view_id=>wwv_flow_api.id(3961125624648774)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(3962590758648775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3963622823648776)
,p_view_id=>wwv_flow_api.id(3961125624648774)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(3963143911648776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3964195550648777)
,p_view_id=>wwv_flow_api.id(3961125624648774)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(3963744436648776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3981526318732266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3960156830648773)
,p_button_name=>'ADD_DEP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3914709239629994)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Department'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3981268501732263)
,p_name=>'P3_DEPARTMENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3960156830648773)
,p_prompt=>'Department Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3981360824732264)
,p_name=>'P3_MANAGER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3960156830648773)
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3981482258732265)
,p_name=>'P3_LOCATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3960156830648773)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Translation Util'
,p_step_title=>'Translation Util'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20191012145346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3982073052732271)
,p_plug_name=>'Generate Translation SQL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3862609736629950)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3982369109732274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3982073052732271)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3914709239629994)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3982150114732272)
,p_name=>'P4_TRANSLATION_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3982073052732271)
,p_prompt=>'Translation Language'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select translated_app_language',
'      ,translated_application_id',
'  from apex_application_trans_map',
' where primary_application_id = :APP_ID'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3982259303732273)
,p_name=>'P4_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3982073052732271)
,p_prompt=>'Page ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id || '' - '' || page_name',
'      ,page_id',
'  from apex_application_pages',
' where application_id = :APP_ID',
' order by page_id'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(3914210361629992)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3982490273732275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate SQL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_custom_trans_util.gen_deployment_script(',
'  :P4_TRANSLATION_APP_ID',
' ,:P4_PAGE_ID',
');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(3936590194630027)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'My Demo App - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(3822681339629917)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20181015194249'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3940779190630083)
,p_plug_name=>'My Demo App'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3862106855629949)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3945440771630095)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(3940779190630083)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3841050155629937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3943591099630092)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3940779190630083)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3914709239629994)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3941124867630086)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3940779190630083)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3913838382629990)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3941552474630086)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3940779190630083)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3913838382629990)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3942641392630089)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3940779190630083)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(3941848652630087)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3913838382629990)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3944384536630093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3943988912630093)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3945184294630094)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3944793367630094)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
