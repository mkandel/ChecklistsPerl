Modules:
Checklists - Generic Checklist functions:
    - add_checklist()
    - ??? update_checklist( $checklist_id ) ???
    - change_checklist_owner( $checklist_id )
    - add_note_to_checklist( $checklist_id )

Checklists::TemplateParser - Checklist template parsing functions
    - parse_all_templates()
    - parse_template( $specific_template )
    - get_all_template_names()

Checklists::DB - Checklist DB interaction

Checklists::Validation - Checklist "item" validation routines

Checklists::Auth::DB - DB based user authentication

Checklists::Reports - Generic reporting mechanism

Checklists::ReportParser::Web
    - Web/JavaScript/YUI report parser
    - Convert report to properly formatted JSON fo rthe YUI table to display

Checklists::ReportParser::CSV - ??? Later
    - CSV specific report parsing

DB:
Tables:
    checklists:
        - checklist_id
        - checklist_name
        - checklist_template
        - checklist_creator
        - checklist_owner
        - [ checklist_items ]

    users:
        - user_id
        - user_first_name
        - user_last_name
        - user_username
        - user_is_admin

    items:
        - item_id
        - checklist_id
        - item_name
        - item_checked - 0 if not checked, 1 if checked
        - item_validation_routine - coderef

Config Options:
    - templ_path: /usr/share/checklists/templates (path to templates)
    - auth_method: (currently supported: DB)
