1) Run "sys_grants_synonyms.sql" as SYS user, set appropriate schema variables in the script.

2) Compile "apex_custom_trans_util" to your parsing schema, set appropriate workspace in the m_workspace_id variables.

3) Install the demo App or use the package as standalone. The Demo App uses the built in HR schema.

4) Customize to your own needs.

*IMPORTANT: the generated SQL script for transferring translations relies on the option that the Application was originally deployes with the "Preserve Original IDs" option.
If this is not the case in your application, you have to to some modifications to the utility package.