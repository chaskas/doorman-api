# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170704031223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_import_import", force: :cascade, comment: "base_import.import" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.string   "file_type",   comment: "File Type"
    t.string   "file_name",   comment: "File Name"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.binary   "file",        comment: "File"
    t.string   "res_model",   comment: "Model"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "base_import_tests_models_char", force: :cascade, comment: "base_import.tests.models.char" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_char_noreadonly", force: :cascade, comment: "base_import.tests.models.char.noreadonly" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_char_readonly", force: :cascade, comment: "base_import.tests.models.char.readonly" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_char_required", force: :cascade, comment: "base_import.tests.models.char.required" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.string   "value",       null: false, comment: "Value"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
  end

  create_table "base_import_tests_models_char_states", force: :cascade, comment: "base_import.tests.models.char.states" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_char_stillreadonly", force: :cascade, comment: "base_import.tests.models.char.stillreadonly" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_m2o", force: :cascade, comment: "base_import.tests.models.m2o" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_m2o_related", force: :cascade, comment: "base_import.tests.models.m2o.related" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_m2o_required", force: :cascade, comment: "base_import.tests.models.m2o.required" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "value",       null: false, comment: "Value"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
  end

  create_table "base_import_tests_models_m2o_required_related", force: :cascade, comment: "base_import.tests.models.m2o.required.related" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_o2m", force: :cascade, comment: "base_import.tests.models.o2m" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_o2m_child", force: :cascade, comment: "base_import.tests.models.o2m.child" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "value",       comment: "Value"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.integer  "parent_id",   comment: "Parent id"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "base_import_tests_models_preview", force: :cascade, comment: "base_import.tests.models.preview" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "othervalue",               comment: "Other Variable"
    t.string   "name",                     comment: "Name"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "somevalue",   null: false, comment: "Some Value"
  end

  create_table "base_language_export", force: :cascade, comment: "base.language.export" do |t|
    t.string   "lang",        null: false, comment: "Language"
    t.integer  "create_uid",               comment: "Created by"
    t.string   "name",                     comment: "File Name"
    t.string   "format",      null: false, comment: "File Format"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "state",                    comment: "State"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.binary   "data",                     comment: "File"
  end

  create_table "base_language_import", force: :cascade, comment: "Language Import" do |t|
    t.integer  "create_uid",                         comment: "Created by"
    t.string   "code",        limit: 5, null: false, comment: "ISO Code"
    t.string   "name",                  null: false, comment: "Language Name"
    t.string   "filename",              null: false, comment: "File Name"
    t.datetime "write_date",                         comment: "Last Updated on"
    t.datetime "create_date",                        comment: "Created on"
    t.integer  "write_uid",                          comment: "Last Updated by"
    t.binary   "data",                  null: false, comment: "File"
    t.boolean  "overwrite",                          comment: "Overwrite Existing Terms"
  end

  create_table "base_language_install", force: :cascade, comment: "Install Language" do |t|
    t.string   "lang",        null: false, comment: "Language"
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "state",                    comment: "Status"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.boolean  "overwrite",                comment: "Overwrite Existing Terms"
  end

  create_table "base_module_configuration", force: :cascade, comment: "base.module.configuration" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "base_module_update", force: :cascade, comment: "Update Module" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "updated",     comment: "Number of modules updated"
    t.integer  "added",       comment: "Number of modules added"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.string   "state",       comment: "Status"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "base_module_upgrade", force: :cascade, comment: "Module Upgrade" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.text     "module_info", comment: "Apps to Update"
  end

  create_table "base_update_translations", force: :cascade, comment: "base.update.translations" do |t|
    t.string   "lang",        null: false, comment: "Language"
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
  end

  create_table "change_password_user", force: :cascade, comment: "Change Password Wizard User" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "user_login",               comment: "User Login"
    t.string   "new_passwd",               comment: "New Password"
    t.integer  "wizard_id",   null: false, comment: "Wizard"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "create_date",              comment: "Created on"
    t.datetime "write_date",               comment: "Last Updated on"
    t.integer  "user_id",     null: false, comment: "User"
  end

  create_table "change_password_wizard", force: :cascade, comment: "Change Password Wizard" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "drinks", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "event_id"
    t.integer  "remaining"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_drinks_on_event_id", using: :btree
    t.index ["person_id"], name: "index_drinks_on_person_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "starts"
    t.datetime "ends"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.datetime "ends"
    t.index ["event_id", "person_id"], name: "index_guests_on_event_id_and_person_id", using: :btree
    t.index ["event_id"], name: "index_guests_on_event_id", using: :btree
    t.index ["person_id"], name: "index_guests_on_person_id", using: :btree
    t.index ["user_id"], name: "index_guests_on_user_id", using: :btree
  end

  create_table "ir_act_client", id: :integer, default: -> { "nextval('ir_actions_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer  "create_uid"
    t.text     "help"
    t.integer  "write_uid"
    t.datetime "write_date"
    t.string   "usage"
    t.datetime "create_date"
    t.string   "type",         null: false
    t.string   "name",         null: false
    t.string   "context",      null: false, comment: "Context Value"
    t.string   "res_model",                 comment: "Destination Model"
    t.binary   "params_store",              comment: "Params storage"
    t.string   "tag",          null: false, comment: "Client action tag"
    t.string   "target",                    comment: "Target Window"
  end

  create_table "ir_act_report_xml", id: :integer, default: -> { "nextval('ir_actions_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer  "create_uid"
    t.text     "help"
    t.integer  "write_uid"
    t.datetime "write_date"
    t.string   "usage"
    t.datetime "create_date"
    t.string   "type",                    null: false
    t.string   "name",                    null: false
    t.string   "parser",                               comment: "Parser Class"
    t.boolean  "header",                               comment: "Add RML Header"
    t.string   "report_type",             null: false, comment: "Report type"
    t.integer  "ir_values_id",                         comment: "More Menu entry"
    t.string   "attachment",                           comment: "Save as Attachment Prefix"
    t.binary   "report_sxw_content_data",              comment: "SXW Content"
    t.string   "report_xml",                           comment: "XML Path"
    t.binary   "report_rml_content_data",              comment: "RML Content"
    t.boolean  "auto",                                 comment: "Custom Python Parser"
    t.string   "report_file",                          comment: "Report File"
    t.boolean  "multi",                                comment: "On Multiple Doc."
    t.string   "report_xsl",                           comment: "XSL Path"
    t.string   "report_rml",                           comment: "Main Report File Path/controller"
    t.string   "report_name",             null: false, comment: "Template Name"
    t.boolean  "attachment_use",                       comment: "Reload from Attachment"
    t.string   "model",                   null: false, comment: "Model"
  end

  create_table "ir_act_server", id: :integer, default: -> { "nextval('ir_actions_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer  "create_uid"
    t.text     "help"
    t.integer  "write_uid"
    t.datetime "write_date"
    t.string   "usage"
    t.datetime "create_date"
    t.string   "type",                   null: false
    t.string   "name",                   null: false
    t.text     "code",                                comment: "Python Code"
    t.integer  "sequence",                            comment: "Sequence"
    t.integer  "crud_model_id",                       comment: "Create/Write Target Model"
    t.string   "ref_object",                          comment: "Reference record"
    t.integer  "wkf_model_id",                        comment: "Target Model"
    t.string   "crud_model_name",                     comment: "Create/Write Target Model Name"
    t.string   "use_relational_model",   null: false, comment: "Relational Target Model"
    t.string   "use_create",             null: false, comment: "Creation Policy"
    t.integer  "wkf_field_id",                        comment: "Relation Field"
    t.string   "id_object",                           comment: "Record"
    t.string   "state",                  null: false, comment: "Action To Do"
    t.string   "id_value",                            comment: "Record ID"
    t.integer  "action_id",                           comment: "Client Action"
    t.integer  "model_id",               null: false, comment: "Base Model"
    t.string   "wkf_model_name",                      comment: "Target Model Name"
    t.integer  "sub_model_object_field",              comment: "Sub-field"
    t.boolean  "link_new_record",                     comment: "Attach the new record"
    t.integer  "wkf_transition_id",                   comment: "Signal to Trigger"
    t.integer  "sub_object",                          comment: "Sub-model"
    t.string   "use_write",              null: false, comment: "Update Policy"
    t.string   "condition",                           comment: "Condition"
    t.string   "copyvalue",                           comment: "Placeholder Expression"
    t.string   "write_expression",                    comment: "Expression"
    t.integer  "menu_ir_values_id",                   comment: "More Menu entry"
    t.integer  "model_object_field",                  comment: "Field"
    t.integer  "link_field_id",                       comment: "Link using field"
  end

  create_table "ir_act_url", id: :integer, default: -> { "nextval('ir_actions_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer  "create_uid"
    t.text     "help"
    t.integer  "write_uid"
    t.datetime "write_date"
    t.string   "usage"
    t.datetime "create_date"
    t.string   "type",        null: false
    t.string   "name",        null: false
    t.string   "target",      null: false, comment: "Action Target"
    t.text     "url",         null: false, comment: "Action URL"
  end

  create_table "ir_act_window", id: :integer, default: -> { "nextval('ir_actions_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer  "create_uid"
    t.text     "help"
    t.integer  "write_uid"
    t.datetime "write_date"
    t.string   "usage"
    t.datetime "create_date"
    t.string   "type",           null: false
    t.string   "name",           null: false
    t.string   "domain",                      comment: "Domain Value"
    t.string   "res_model",      null: false, comment: "Destination Model"
    t.integer  "search_view_id",              comment: "Search View Ref."
    t.string   "view_type",      null: false, comment: "View Type"
    t.string   "src_model",                   comment: "Source Model"
    t.integer  "res_id",                      comment: "Record ID"
    t.integer  "view_id",                     comment: "View Ref."
    t.string   "view_mode",      null: false, comment: "View mode"
    t.string   "target",                      comment: "Target Window"
    t.boolean  "multi",                       comment: "Restrict to lists"
    t.boolean  "auto_search",                 comment: "Auto search"
    t.boolean  "filter",                      comment: "Filter"
    t.integer  "limit",                       comment: "Limit"
    t.string   "context",        null: false, comment: "Context Value"
  end

  create_table "ir_act_window_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_act_window AND res_groups" do |t|
    t.integer "act_id", null: false
    t.integer "gid",    null: false
    t.index ["act_id", "gid"], name: "ir_act_window_group_rel_act_id_gid_key", unique: true, using: :btree
    t.index ["act_id"], name: "ir_act_window_group_rel_act_id_idx", using: :btree
    t.index ["gid"], name: "ir_act_window_group_rel_gid_idx", using: :btree
  end

  create_table "ir_act_window_view", force: :cascade, comment: "ir.actions.act_window.view" do |t|
    t.integer  "create_uid",                 comment: "Created by"
    t.boolean  "multi",                      comment: "On Multiple Doc."
    t.integer  "view_id",                    comment: "View"
    t.integer  "sequence",                   comment: "Sequence"
    t.integer  "write_uid",                  comment: "Last Updated by"
    t.string   "view_mode",     null: false, comment: "View Type"
    t.datetime "write_date",                 comment: "Last Updated on"
    t.integer  "act_window_id",              comment: "Action"
    t.datetime "create_date",                comment: "Created on"
    t.index ["act_window_id", "view_mode"], name: "act_window_view_unique_mode_per_action", unique: true, using: :btree
  end

  create_table "ir_actions", force: :cascade do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.text     "help",                     comment: "Action Description"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.string   "usage",                    comment: "Action Usage"
    t.datetime "create_date",              comment: "Created on"
    t.string   "type",        null: false, comment: "Action Type"
    t.string   "name",        null: false, comment: "Name"
  end

  create_table "ir_actions_todo", force: :cascade, comment: "Configuration Wizards" do |t|
    t.string   "name",                     comment: "Name"
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "sequence",                 comment: "Sequence"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.text     "note",                     comment: "Text"
    t.string   "state",       null: false, comment: "Status"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.string   "type",        null: false, comment: "Type"
    t.integer  "action_id",   null: false, comment: "Action"
    t.index ["action_id"], name: "ir_actions_todo_action_id_index", using: :btree
  end

  create_table "ir_attachment", force: :cascade, comment: "ir.attachment" do |t|
    t.datetime "create_date",                             comment: "Date Created"
    t.datetime "write_date",                              comment: "Last Updated on"
    t.string   "res_model",                               comment: "Resource Model"
    t.integer  "write_uid",                               comment: "Last Updated by"
    t.string   "res_name",                                comment: "Resource Name"
    t.binary   "db_datas",                                comment: "Database Data"
    t.integer  "file_size",                               comment: "File Size"
    t.integer  "create_uid",                              comment: "Owner"
    t.integer  "company_id",                              comment: "Company"
    t.integer  "res_id",                                  comment: "Resource ID"
    t.text     "index_content",                           comment: "Indexed Content"
    t.string   "type",                       null: false, comment: "Type"
    t.boolean  "public",                                  comment: "Is public document"
    t.string   "store_fname",                             comment: "Stored Filename"
    t.text     "description",                             comment: "Description"
    t.string   "res_field",                               comment: "Resource Field"
    t.string   "mimetype",                                comment: "Mime Type"
    t.string   "name",                       null: false, comment: "Attachment Name"
    t.string   "url",           limit: 1024,              comment: "Url"
    t.string   "checksum",      limit: 40,                comment: "Checksum/SHA1"
    t.string   "datas_fname",                             comment: "File Name"
    t.index ["checksum"], name: "ir_attachment_checksum_index", using: :btree
    t.index ["res_model", "res_id"], name: "ir_attachment_res_idx", using: :btree
    t.index ["url"], name: "ir_attachment_url_index", using: :btree
  end

  create_table "ir_config_parameter", force: :cascade, comment: "ir.config_parameter" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.text     "value",       null: false, comment: "Value"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "key",         null: false, comment: "Key"
    t.datetime "create_date",              comment: "Created on"
    t.index ["key"], name: "ir_config_parameter_key_index", using: :btree
    t.index ["key"], name: "ir_config_parameter_key_uniq", unique: true, using: :btree
  end

  create_table "ir_config_parameter_groups_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_config_parameter AND res_groups" do |t|
    t.integer "icp_id",   null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "ir_config_parameter_groups_rel_group_id_idx", using: :btree
    t.index ["icp_id", "group_id"], name: "ir_config_parameter_groups_rel_icp_id_group_id_key", unique: true, using: :btree
    t.index ["icp_id"], name: "ir_config_parameter_groups_rel_icp_id_idx", using: :btree
  end

  create_table "ir_cron", force: :cascade, comment: "ir.cron" do |t|
    t.string   "function",                     comment: "Method"
    t.integer  "create_uid",                   comment: "Created by"
    t.string   "interval_type",                comment: "Interval Unit"
    t.datetime "create_date",                  comment: "Created on"
    t.string   "name",            null: false, comment: "Name"
    t.integer  "user_id",         null: false, comment: "User"
    t.text     "args",                         comment: "Arguments"
    t.integer  "numbercall",                   comment: "Number of Calls"
    t.datetime "nextcall",        null: false, comment: "Next Execution Date"
    t.integer  "priority",                     comment: "Priority"
    t.string   "model",                        comment: "Object"
    t.boolean  "doall",                        comment: "Repeat Missed"
    t.datetime "write_date",                   comment: "Last Updated on"
    t.boolean  "active",                       comment: "Active"
    t.integer  "interval_number",              comment: "Interval number"
    t.integer  "write_uid",                    comment: "Last Updated by"
  end

  create_table "ir_exports", force: :cascade, comment: "ir.exports" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.string   "resource",    comment: "Resource"
    t.string   "name",        comment: "Export Name"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "create_date", comment: "Created on"
    t.datetime "write_date",  comment: "Last Updated on"
    t.index ["resource"], name: "ir_exports_resource_index", using: :btree
  end

  create_table "ir_exports_line", force: :cascade, comment: "ir.exports.line" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "name",        comment: "Field Name"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.integer  "export_id",   comment: "Export"
    t.index ["export_id"], name: "ir_exports_line_export_id_index", using: :btree
  end

  create_table "ir_filters", force: :cascade, comment: "Filters" do |t|
    t.text     "sort",        null: false, comment: "Sort"
    t.string   "model_id",    null: false, comment: "Model"
    t.text     "domain",      null: false, comment: "Domain"
    t.text     "context",     null: false, comment: "Context"
    t.datetime "create_date",              comment: "Created on"
    t.string   "name",        null: false, comment: "Filter Name"
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.boolean  "is_default",               comment: "Default filter"
    t.integer  "user_id",                  comment: "User"
    t.datetime "write_date",               comment: "Last Updated on"
    t.boolean  "active",                   comment: "Active"
    t.integer  "action_id",                comment: "Action"
    t.index "lower((name)::text), model_id, (COALESCE(user_id, (-1))), (COALESCE(action_id, (-1)))", name: "ir_filters_name_model_uid_unique_action_index", unique: true, using: :btree
    t.index ["name", "model_id", "user_id", "action_id"], name: "ir_filters_name_model_uid_unique", unique: true, using: :btree
  end

  create_table "ir_logging", force: :cascade, comment: "ir.logging" do |t|
    t.integer  "create_uid",               comment: "Uid"
    t.datetime "create_date",              comment: "Create date"
    t.string   "name",        null: false, comment: "Name"
    t.text     "message",     null: false, comment: "Message"
    t.string   "level",                    comment: "Level"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "func",        null: false, comment: "Function"
    t.datetime "write_date",               comment: "Last Updated on"
    t.string   "path",        null: false, comment: "Path"
    t.string   "line",        null: false, comment: "Line"
    t.string   "type",        null: false, comment: "Type"
    t.string   "dbname",                   comment: "Database Name"
    t.index ["dbname"], name: "ir_logging_dbname_index", using: :btree
    t.index ["level"], name: "ir_logging_level_index", using: :btree
    t.index ["type"], name: "ir_logging_type_index", using: :btree
  end

  create_table "ir_mail_server", force: :cascade, comment: "ir.mail_server" do |t|
    t.integer  "create_uid",                              comment: "Created by"
    t.integer  "smtp_port",                  null: false, comment: "SMTP Port"
    t.datetime "create_date",                             comment: "Created on"
    t.string   "name",                       null: false, comment: "Description"
    t.integer  "sequence",                                comment: "Priority"
    t.string   "smtp_host",                  null: false, comment: "SMTP Server"
    t.integer  "write_uid",                               comment: "Last Updated by"
    t.string   "smtp_pass",       limit: 64,              comment: "Password"
    t.boolean  "smtp_debug",                              comment: "Debugging"
    t.datetime "write_date",                              comment: "Last Updated on"
    t.string   "smtp_user",       limit: 64,              comment: "Username"
    t.boolean  "active",                                  comment: "Active"
    t.string   "smtp_encryption",            null: false, comment: "Connection Security"
    t.index ["name"], name: "ir_mail_server_name_index", using: :btree
  end

  create_table "ir_model", force: :cascade do |t|
    t.string   "model",       null: false
    t.string   "name",        null: false
    t.string   "state"
    t.text     "info"
    t.boolean  "transient"
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.index ["model"], name: "ir_model_model_index", using: :btree
    t.index ["model"], name: "ir_model_obj_name_uniq", unique: true, using: :btree
  end

  create_table "ir_model_access", force: :cascade, comment: "ir.model.access" do |t|
    t.integer  "model_id",    null: false, comment: "Object"
    t.boolean  "perm_read",                comment: "Read Access"
    t.string   "name",        null: false, comment: "Name"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.boolean  "perm_write",               comment: "Write Access"
    t.datetime "write_date",               comment: "Last Updated on"
    t.boolean  "perm_unlink",              comment: "Delete Access"
    t.boolean  "active",                   comment: "Active"
    t.datetime "create_date",              comment: "Created on"
    t.boolean  "perm_create",              comment: "Create Access"
    t.integer  "group_id",                 comment: "Group"
    t.integer  "create_uid",               comment: "Created by"
    t.index ["group_id"], name: "ir_model_access_group_id_index", using: :btree
    t.index ["model_id"], name: "ir_model_access_model_id_index", using: :btree
    t.index ["name"], name: "ir_model_access_name_index", using: :btree
  end

  create_table "ir_model_constraint", force: :cascade do |t|
    t.datetime "date_init"
    t.datetime "date_update"
    t.integer  "module",                null: false
    t.integer  "model",                 null: false
    t.string   "type",        limit: 1, null: false
    t.string   "definition"
    t.string   "name",                  null: false
    t.integer  "create_uid",                         comment: "Created by"
    t.integer  "write_uid",                          comment: "Last Updated by"
    t.datetime "write_date",                         comment: "Last Updated on"
    t.datetime "create_date",                        comment: "Created on"
    t.index ["model"], name: "ir_model_constraint_model_index", using: :btree
    t.index ["module"], name: "ir_model_constraint_module_index", using: :btree
    t.index ["name", "module"], name: "ir_model_constraint_module_name_uniq", unique: true, using: :btree
    t.index ["name"], name: "ir_model_constraint_name_index", using: :btree
    t.index ["type"], name: "ir_model_constraint_type_index", using: :btree
  end

  create_table "ir_model_data", force: :cascade do |t|
    t.integer  "create_uid"
    t.datetime "create_date"
    t.datetime "write_date"
    t.integer  "write_uid"
    t.boolean  "noupdate"
    t.string   "name",        null: false
    t.datetime "date_init"
    t.datetime "date_update"
    t.string   "module",      null: false
    t.string   "model",       null: false
    t.integer  "res_id"
    t.index ["model", "res_id"], name: "ir_model_data_model_res_id_index", using: :btree
    t.index ["module", "name"], name: "ir_model_data_module_name_uniq_index", unique: true, using: :btree
  end

  create_table "ir_model_fields", force: :cascade do |t|
    t.string   "model",                                   null: false
    t.integer  "model_id",                                null: false
    t.string   "name",                                    null: false
    t.string   "state",                  default: "base", null: false
    t.string   "field_description",                       null: false
    t.text     "help"
    t.string   "ttype",                                   null: false
    t.string   "relation"
    t.string   "relation_field"
    t.boolean  "index"
    t.boolean  "copy"
    t.string   "related"
    t.boolean  "readonly",               default: false
    t.boolean  "required",               default: false
    t.boolean  "selectable",             default: false
    t.boolean  "translate",              default: false
    t.integer  "serialization_field_id"
    t.string   "relation_table"
    t.string   "column1"
    t.string   "column2"
    t.boolean  "store"
    t.string   "domain",                                               comment: "Domain"
    t.string   "selection",                                            comment: "Selection Options"
    t.datetime "create_date",                                          comment: "Created on"
    t.string   "on_delete",                                            comment: "On Delete"
    t.integer  "write_uid",                                            comment: "Last Updated by"
    t.string   "depends",                                              comment: "Dependencies"
    t.integer  "size",                                                 comment: "Size"
    t.string   "complete_name",                                        comment: "Complete name"
    t.integer  "create_uid",                                           comment: "Created by"
    t.text     "compute",                                              comment: "Compute"
    t.datetime "write_date",                                           comment: "Last Updated on"
    t.index ["complete_name"], name: "ir_model_fields_complete_name_index", using: :btree
    t.index ["model"], name: "ir_model_fields_model_index", using: :btree
    t.index ["model_id"], name: "ir_model_fields_model_id_index", using: :btree
    t.index ["name"], name: "ir_model_fields_name_index", using: :btree
    t.index ["state"], name: "ir_model_fields_state_index", using: :btree
  end

  create_table "ir_model_fields_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_model_fields AND res_groups" do |t|
    t.integer "field_id", null: false
    t.integer "group_id", null: false
    t.index ["field_id", "group_id"], name: "ir_model_fields_group_rel_field_id_group_id_key", unique: true, using: :btree
    t.index ["field_id"], name: "ir_model_fields_group_rel_field_id_idx", using: :btree
    t.index ["group_id"], name: "ir_model_fields_group_rel_group_id_idx", using: :btree
  end

  create_table "ir_model_relation", force: :cascade do |t|
    t.datetime "date_init"
    t.datetime "date_update"
    t.integer  "module",      null: false
    t.integer  "model",       null: false
    t.string   "name",        null: false
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.index ["model"], name: "ir_model_relation_model_index", using: :btree
    t.index ["module"], name: "ir_model_relation_module_index", using: :btree
    t.index ["name"], name: "ir_model_relation_name_index", using: :btree
  end

  create_table "ir_module_category", force: :cascade do |t|
    t.integer  "create_uid"
    t.datetime "create_date"
    t.datetime "write_date"
    t.integer  "write_uid"
    t.integer  "parent_id"
    t.string   "name",        null: false
    t.text     "description",              comment: "Description"
    t.integer  "sequence",                 comment: "Sequence"
    t.boolean  "visible",                  comment: "Visible"
    t.index ["name"], name: "ir_module_category_name_index", using: :btree
    t.index ["parent_id"], name: "ir_module_category_parent_id_index", using: :btree
  end

  create_table "ir_module_module", force: :cascade do |t|
    t.integer  "create_uid"
    t.datetime "create_date"
    t.datetime "write_date"
    t.integer  "write_uid"
    t.string   "website"
    t.string   "summary"
    t.string   "name",                                         null: false
    t.string   "author"
    t.string   "icon"
    t.string   "state",             limit: 16
    t.string   "latest_version"
    t.string   "shortdesc"
    t.integer  "category_id"
    t.text     "description"
    t.boolean  "application",                  default: false
    t.boolean  "demo",                         default: false
    t.boolean  "web",                          default: false
    t.string   "license",           limit: 32
    t.integer  "sequence",                     default: 100
    t.boolean  "auto_install",                 default: false
    t.string   "maintainer",                                                comment: "Maintainer"
    t.text     "contributors",                                              comment: "Contributors"
    t.text     "views_by_module",                                           comment: "Views"
    t.string   "published_version",                                         comment: "Published Version"
    t.text     "menus_by_module",                                           comment: "Menus"
    t.string   "url",                                                       comment: "URL"
    t.text     "reports_by_module",                                         comment: "Reports"
    t.index ["category_id"], name: "ir_module_module_category_id_index", using: :btree
    t.index ["name"], name: "ir_module_module_name_index", using: :btree
    t.index ["name"], name: "ir_module_module_name_uniq", unique: true, using: :btree
    t.index ["name"], name: "name_uniq", unique: true, using: :btree
    t.index ["state"], name: "ir_module_module_state_index", using: :btree
  end

  create_table "ir_module_module_dependency", force: :cascade do |t|
    t.integer  "create_uid"
    t.datetime "create_date"
    t.datetime "write_date"
    t.integer  "write_uid"
    t.string   "name"
    t.integer  "module_id"
    t.index ["name"], name: "ir_module_module_dependency_name_index", using: :btree
  end

  create_table "ir_property", force: :cascade, comment: "ir.property" do |t|
    t.integer  "create_uid",                   comment: "Created by"
    t.integer  "value_integer",                comment: "Value integer"
    t.float    "value_float",                  comment: "Value float"
    t.datetime "create_date",                  comment: "Created on"
    t.string   "name",                         comment: "Name"
    t.text     "value_text",                   comment: "Value text"
    t.string   "res_id",                       comment: "Resource"
    t.integer  "company_id",                   comment: "Company"
    t.integer  "write_uid",                    comment: "Last Updated by"
    t.integer  "fields_id",       null: false, comment: "Field"
    t.datetime "value_datetime",               comment: "Value datetime"
    t.binary   "value_binary",                 comment: "Value binary"
    t.datetime "write_date",                   comment: "Last Updated on"
    t.string   "value_reference",              comment: "Value reference"
    t.string   "type",            null: false, comment: "Type"
    t.index ["company_id"], name: "ir_property_company_id_index", using: :btree
    t.index ["fields_id"], name: "ir_property_fields_id_index", using: :btree
    t.index ["name"], name: "ir_property_name_index", using: :btree
    t.index ["res_id"], name: "ir_property_res_id_index", using: :btree
    t.index ["type"], name: "ir_property_type_index", using: :btree
  end

  create_table "ir_rule", force: :cascade, comment: "ir.rule" do |t|
    t.integer  "model_id",     null: false, comment: "Object"
    t.text     "domain_force",              comment: "Domain"
    t.string   "name",                      comment: "Name"
    t.integer  "create_uid",                comment: "Created by"
    t.boolean  "global",                    comment: "Global"
    t.integer  "write_uid",                 comment: "Last Updated by"
    t.boolean  "perm_write",                comment: "Apply for Write"
    t.datetime "create_date",               comment: "Created on"
    t.datetime "write_date",                comment: "Last Updated on"
    t.boolean  "perm_unlink",               comment: "Apply for Delete"
    t.boolean  "active",                    comment: "Active"
    t.boolean  "perm_read",                 comment: "Apply for Read"
    t.boolean  "perm_create",               comment: "Apply for Create"
    t.index ["model_id"], name: "ir_rule_model_id_index", using: :btree
    t.index ["name"], name: "ir_rule_name_index", using: :btree
  end

  create_table "ir_sequence", force: :cascade, comment: "ir.sequence" do |t|
    t.boolean  "use_date_range",                comment: "Use subsequences per date_range"
    t.string   "code",                          comment: "Sequence Code"
    t.datetime "create_date",                   comment: "Created on"
    t.string   "suffix",                        comment: "Suffix"
    t.integer  "number_next",      null: false, comment: "Next Number"
    t.integer  "create_uid",                    comment: "Created by"
    t.string   "implementation",   null: false, comment: "Implementation"
    t.integer  "number_increment", null: false, comment: "Step"
    t.integer  "company_id",                    comment: "Company"
    t.integer  "write_uid",                     comment: "Last Updated by"
    t.integer  "padding",          null: false, comment: "Sequence Size"
    t.string   "prefix",                        comment: "Prefix"
    t.datetime "write_date",                    comment: "Last Updated on"
    t.boolean  "active",                        comment: "Active"
    t.string   "name",             null: false, comment: "Name"
  end

  create_table "ir_sequence_date_range", force: :cascade, comment: "ir.sequence.date_range" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "number_next", null: false, comment: "Next Number"
    t.date     "date_from",   null: false, comment: "From"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.integer  "sequence_id", null: false, comment: "Main Sequence"
    t.datetime "write_date",               comment: "Last Updated on"
    t.date     "date_to",     null: false, comment: "To"
    t.datetime "create_date",              comment: "Created on"
  end

  create_table "ir_server_object_lines", force: :cascade, comment: "Server Action value mapping" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "server_id",                comment: "Related Server Action"
    t.text     "value",       null: false, comment: "Value"
    t.integer  "col1",        null: false, comment: "Field"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "type",        null: false, comment: "Evaluation Type"
  end

  create_table "ir_translation", force: :cascade, comment: "ir.translation" do |t|
    t.string  "lang",                  comment: "Language"
    t.text    "src",                   comment: "Internal Source"
    t.string  "name",     null: false, comment: "Translated field"
    t.string  "type",                  comment: "Type"
    t.string  "module",                comment: "Module"
    t.string  "state",                 comment: "Status"
    t.text    "comments",              comment: "Translation comments"
    t.text    "value",                 comment: "Translation Value"
    t.integer "res_id",                comment: "Record ID"
    t.index "md5(src)", name: "ir_translation_src_md5", using: :btree
    t.index ["comments"], name: "ir_translation_comments_index", using: :btree
    t.index ["module"], name: "ir_translation_module_index", using: :btree
    t.index ["name", "lang", "type"], name: "ir_translation_ltn", using: :btree
    t.index ["res_id"], name: "ir_translation_res_id_index", using: :btree
    t.index ["type"], name: "ir_translation_type_index", using: :btree
  end

  create_table "ir_ui_menu", force: :cascade, comment: "ir.ui.menu" do |t|
    t.integer  "parent_left"
    t.integer  "parent_right"
    t.string   "name",         null: false, comment: "Menu"
    t.string   "web_icon",                  comment: "Web Icon File"
    t.integer  "parent_id",                 comment: "Parent Menu"
    t.integer  "sequence",                  comment: "Sequence"
    t.integer  "write_uid",                 comment: "Last Updated by"
    t.boolean  "active",                    comment: "Active"
    t.datetime "write_date",                comment: "Last Updated on"
    t.integer  "create_uid",                comment: "Created by"
    t.string   "action",                    comment: "Action"
    t.datetime "create_date",               comment: "Created on"
    t.boolean  "load_xmlid",                comment: "Load xmlid"
    t.index ["parent_id"], name: "ir_ui_menu_parent_id_index", using: :btree
    t.index ["parent_left"], name: "ir_ui_menu_parent_left_index", using: :btree
    t.index ["parent_right"], name: "ir_ui_menu_parent_right_index", using: :btree
  end

  create_table "ir_ui_menu_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_ui_menu AND res_groups" do |t|
    t.integer "menu_id", null: false
    t.integer "gid",     null: false
    t.index ["gid"], name: "ir_ui_menu_group_rel_gid_idx", using: :btree
    t.index ["menu_id", "gid"], name: "ir_ui_menu_group_rel_menu_id_gid_key", unique: true, using: :btree
    t.index ["menu_id"], name: "ir_ui_menu_group_rel_menu_id_idx", using: :btree
  end

  create_table "ir_ui_view", force: :cascade, comment: "ir.ui.view" do |t|
    t.datetime "create_date",                comment: "Create date"
    t.datetime "write_date",                 comment: "Last Modification Date"
    t.integer  "write_uid",                  comment: "Last Updated by"
    t.string   "field_parent",               comment: "Child Field"
    t.integer  "inherit_id",                 comment: "Inherited View"
    t.integer  "model_data_id",              comment: "Model Data"
    t.integer  "priority",      null: false, comment: "Sequence"
    t.string   "type",                       comment: "View Type"
    t.text     "arch_db",                    comment: "Arch Blob"
    t.integer  "create_uid",                 comment: "Created by"
    t.string   "key",                        comment: "Key"
    t.boolean  "active",                     comment: "Active"
    t.string   "arch_fs",                    comment: "Arch Filename"
    t.string   "name",          null: false, comment: "View Name"
    t.string   "mode",          null: false, comment: "View inheritance mode"
    t.string   "model",                      comment: "Model"
    t.index ["inherit_id"], name: "ir_ui_view_inherit_id_index", using: :btree
    t.index ["model", "inherit_id"], name: "ir_ui_view_model_type_inherit_id", using: :btree
    t.index ["model"], name: "ir_ui_view_model_index", using: :btree
  end

  create_table "ir_ui_view_custom", force: :cascade, comment: "ir.ui.view.custom" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "ref_id",      null: false, comment: "Original View"
    t.datetime "write_date",               comment: "Last Updated on"
    t.integer  "user_id",     null: false, comment: "User"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.text     "arch",        null: false, comment: "View Architecture"
    t.index ["ref_id"], name: "ir_ui_view_custom_ref_id_index", using: :btree
    t.index ["user_id", "ref_id"], name: "ir_ui_view_custom_user_id_ref_id", using: :btree
    t.index ["user_id"], name: "ir_ui_view_custom_user_id_index", using: :btree
  end

  create_table "ir_ui_view_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_ui_view AND res_groups" do |t|
    t.integer "view_id",  null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "ir_ui_view_group_rel_group_id_idx", using: :btree
    t.index ["view_id", "group_id"], name: "ir_ui_view_group_rel_view_id_group_id_key", unique: true, using: :btree
    t.index ["view_id"], name: "ir_ui_view_group_rel_view_id_idx", using: :btree
  end

  create_table "ir_values", force: :cascade, comment: "ir.values" do |t|
    t.integer  "model_id",                 comment: "Model (change only)"
    t.datetime "create_date",              comment: "Created on"
    t.datetime "write_date",               comment: "Last Updated on"
    t.integer  "create_uid",               comment: "Created by"
    t.string   "key2",                     comment: "Qualifier"
    t.integer  "company_id",               comment: "Company"
    t.text     "value",                    comment: "Value"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.integer  "user_id",                  comment: "User"
    t.string   "key",         null: false, comment: "Type"
    t.string   "model",       null: false, comment: "Model Name"
    t.integer  "action_id",                comment: "Action (change only)"
    t.integer  "res_id",                   comment: "Record ID"
    t.string   "name",        null: false, comment: "Name"
    t.index ["company_id"], name: "ir_values_company_id_index", using: :btree
    t.index ["key", "model", "key2", "res_id", "user_id"], name: "ir_values_key_model_key2_res_id_user_id_idx", using: :btree
    t.index ["key"], name: "ir_values_key_index", using: :btree
    t.index ["key2"], name: "ir_values_key2_index", using: :btree
    t.index ["model"], name: "ir_values_model_index", using: :btree
    t.index ["res_id"], name: "ir_values_res_id_index", using: :btree
    t.index ["user_id"], name: "ir_values_user_id_index", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "rut"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.string   "email"
    t.string   "phone"
    t.integer  "mtype"
    t.datetime "last_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rut"], name: "index_people_on_rut", unique: true, using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "rut"
    t.string   "phone"
    t.string   "address"
    t.integer  "gender"
    t.integer  "marital_status"
    t.string   "picture"
    t.string   "file"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "rel_modules_langexport", id: false, force: :cascade, comment: "RELATION BETWEEN base_language_export AND ir_module_module" do |t|
    t.integer "wiz_id",    null: false
    t.integer "module_id", null: false
    t.index ["module_id"], name: "rel_modules_langexport_module_id_idx", using: :btree
    t.index ["wiz_id", "module_id"], name: "rel_modules_langexport_wiz_id_module_id_key", unique: true, using: :btree
    t.index ["wiz_id"], name: "rel_modules_langexport_wiz_id_idx", using: :btree
  end

  create_table "rel_server_actions", id: false, force: :cascade, comment: "RELATION BETWEEN ir_act_server AND ir_act_server" do |t|
    t.integer "server_id", null: false
    t.integer "action_id", null: false
    t.index ["action_id"], name: "rel_server_actions_action_id_idx", using: :btree
    t.index ["server_id", "action_id"], name: "rel_server_actions_server_id_action_id_key", unique: true, using: :btree
    t.index ["server_id"], name: "rel_server_actions_server_id_idx", using: :btree
  end

  create_table "res_bank", force: :cascade, comment: "Bank" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "fax",                      comment: "Fax"
    t.datetime "create_date",              comment: "Created on"
    t.string   "name",        null: false, comment: "Name"
    t.string   "zip",                      comment: "Zip"
    t.string   "city",                     comment: "City"
    t.integer  "country",                  comment: "Country"
    t.string   "street2",                  comment: "Street2"
    t.string   "bic",                      comment: "Bank Identifier Code"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.string   "email",                    comment: "Email"
    t.string   "phone",                    comment: "Phone"
    t.integer  "state",                    comment: "Fed. State"
    t.string   "street",                   comment: "Street"
    t.datetime "write_date",               comment: "Last Updated on"
    t.boolean  "active",                   comment: "Active"
    t.index ["bic"], name: "res_bank_bic_index", using: :btree
  end

  create_table "res_company", force: :cascade do |t|
    t.string   "name",             null: false
    t.integer  "partner_id",       null: false
    t.integer  "currency_id",      null: false
    t.text     "rml_footer",                    comment: "Custom Report Footer"
    t.datetime "create_date",                   comment: "Created on"
    t.text     "rml_header",       null: false, comment: "Rml header"
    t.integer  "sequence",                      comment: "Sequence"
    t.string   "rml_paper_format", null: false, comment: "Paper Format"
    t.integer  "write_uid",                     comment: "Last Updated by"
    t.binary   "logo_web",                      comment: "Logo web"
    t.integer  "font",                          comment: "Font"
    t.string   "account_no",                    comment: "Account No."
    t.integer  "parent_id",                     comment: "Parent Company"
    t.string   "email",                         comment: "Email"
    t.integer  "create_uid",                    comment: "Created by"
    t.boolean  "custom_footer",                 comment: "Custom footer"
    t.string   "phone",                         comment: "Phone"
    t.text     "rml_header2",      null: false, comment: "RML Internal Header"
    t.text     "rml_header3",      null: false, comment: "RML Internal Header for Landscape Reports"
    t.datetime "write_date",                    comment: "Last Updated on"
    t.string   "rml_header1",                   comment: "Company Tagline"
    t.string   "company_registry",              comment: "Company registry"
    t.index ["name"], name: "res_company_name_uniq", unique: true, using: :btree
    t.index ["parent_id"], name: "res_company_parent_id_index", using: :btree
  end

  create_table "res_company_users_rel", id: false, force: :cascade, comment: "RELATION BETWEEN res_company AND res_users" do |t|
    t.integer "cid",     null: false
    t.integer "user_id", null: false
    t.index ["cid", "user_id"], name: "res_company_users_rel_cid_user_id_key", unique: true, using: :btree
    t.index ["cid"], name: "res_company_users_rel_cid_idx", using: :btree
    t.index ["user_id"], name: "res_company_users_rel_user_id_idx", using: :btree
  end

  create_table "res_config", force: :cascade, comment: "res.config" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "res_config_installer", force: :cascade, comment: "res.config.installer" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "res_config_settings", force: :cascade, comment: "res.config.settings" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "res_country", force: :cascade, comment: "Country" do |t|
    t.integer  "create_uid",                            comment: "Created by"
    t.string   "code",           limit: 2,              comment: "Country Code"
    t.string   "name",                     null: false, comment: "Country Name"
    t.integer  "write_uid",                             comment: "Last Updated by"
    t.integer  "currency_id",                           comment: "Currency"
    t.text     "address_format",                        comment: "Address format"
    t.datetime "write_date",                            comment: "Last Updated on"
    t.datetime "create_date",                           comment: "Created on"
    t.integer  "phone_code",                            comment: "Country Calling Code"
    t.index ["code"], name: "res_country_code_uniq", unique: true, using: :btree
    t.index ["name"], name: "res_country_name_uniq", unique: true, using: :btree
  end

  create_table "res_country_group", force: :cascade, comment: "Country Group" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "name",        null: false, comment: "Name"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
  end

  create_table "res_country_res_country_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN res_country AND res_country_group" do |t|
    t.integer "res_country_id",       null: false
    t.integer "res_country_group_id", null: false
    t.index ["res_country_group_id"], name: "res_country_res_country_group_rel_res_country_group_id_idx", using: :btree
    t.index ["res_country_id", "res_country_group_id"], name: "res_country_res_country_group_res_country_id_res_country_gr_key", unique: true, using: :btree
    t.index ["res_country_id"], name: "res_country_res_country_group_rel_res_country_id_idx", using: :btree
  end

  create_table "res_country_state", force: :cascade, comment: "Country state" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "code",        null: false, comment: "State Code"
    t.string   "name",        null: false, comment: "State Name"
    t.integer  "country_id",  null: false, comment: "Country"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.index ["country_id", "code"], name: "res_country_state_name_code_uniq", unique: true, using: :btree
  end

  create_table "res_currency", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "symbol",      null: false
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.decimal  "rounding",                 comment: "Rounding Factor"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.string   "position",                 comment: "Symbol Position"
    t.boolean  "active",                   comment: "Active"
    t.index ["name"], name: "res_currency_unique_name", unique: true, using: :btree
  end

  create_table "res_currency_rate", force: :cascade, comment: "Currency Rate" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "name",        null: false, comment: "Date"
    t.integer  "company_id",               comment: "Company"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.integer  "currency_id",              comment: "Currency"
    t.decimal  "rate",                     comment: "Rate"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.index ["name"], name: "res_currency_rate_name_index", using: :btree
  end

  create_table "res_font", force: :cascade, comment: "Fonts available" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "name",        null: false, comment: "Font Name"
    t.string   "family",      null: false, comment: "Font family"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "create_date",              comment: "Created on"
    t.string   "mode",        null: false, comment: "Mode"
    t.datetime "write_date",               comment: "Last Updated on"
    t.string   "path",        null: false, comment: "Path"
    t.index ["family", "name"], name: "res_font_name_font_uniq", unique: true, using: :btree
  end

  create_table "res_groups", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "comment",                  comment: "Comment"
    t.integer  "create_uid",               comment: "Created by"
    t.integer  "color",                    comment: "Color Index"
    t.boolean  "share",                    comment: "Share Group"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
    t.integer  "category_id",              comment: "Application"
    t.index ["category_id", "name"], name: "res_groups_name_uniq", unique: true, using: :btree
    t.index ["category_id"], name: "res_groups_category_id_index", using: :btree
  end

  create_table "res_groups_action_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_actions_todo AND res_groups" do |t|
    t.integer "uid", null: false
    t.integer "gid", null: false
    t.index ["gid"], name: "res_groups_action_rel_gid_idx", using: :btree
    t.index ["uid", "gid"], name: "res_groups_action_rel_uid_gid_key", unique: true, using: :btree
    t.index ["uid"], name: "res_groups_action_rel_uid_idx", using: :btree
  end

  create_table "res_groups_implied_rel", id: false, force: :cascade, comment: "RELATION BETWEEN res_groups AND res_groups" do |t|
    t.integer "gid", null: false
    t.integer "hid", null: false
    t.index ["gid", "hid"], name: "res_groups_implied_rel_gid_hid_key", unique: true, using: :btree
    t.index ["gid"], name: "res_groups_implied_rel_gid_idx", using: :btree
    t.index ["hid"], name: "res_groups_implied_rel_hid_idx", using: :btree
  end

  create_table "res_groups_report_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_act_report_xml AND res_groups" do |t|
    t.integer "uid", null: false
    t.integer "gid", null: false
    t.index ["gid"], name: "res_groups_report_rel_gid_idx", using: :btree
    t.index ["uid", "gid"], name: "res_groups_report_rel_uid_gid_key", unique: true, using: :btree
    t.index ["uid"], name: "res_groups_report_rel_uid_idx", using: :btree
  end

  create_table "res_groups_users_rel", id: false, force: :cascade, comment: "RELATION BETWEEN res_groups AND res_users" do |t|
    t.integer "gid", null: false
    t.integer "uid", null: false
    t.index ["gid", "uid"], name: "res_groups_users_rel_gid_uid_key", unique: true, using: :btree
    t.index ["gid"], name: "res_groups_users_rel_gid_idx", using: :btree
    t.index ["uid"], name: "res_groups_users_rel_uid_idx", using: :btree
  end

  create_table "res_lang", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "code",          null: false
    t.integer  "create_uid",                 comment: "Created by"
    t.string   "direction",     null: false, comment: "Direction"
    t.datetime "create_date",                comment: "Created on"
    t.string   "date_format",   null: false, comment: "Date Format"
    t.string   "thousands_sep",              comment: "Thousands Separator"
    t.boolean  "translatable",               comment: "Translatable"
    t.integer  "write_uid",                  comment: "Last Updated by"
    t.string   "time_format",   null: false, comment: "Time Format"
    t.datetime "write_date",                 comment: "Last Updated on"
    t.string   "decimal_point", null: false, comment: "Decimal Separator"
    t.boolean  "active",                     comment: "Active"
    t.string   "iso_code",                   comment: "ISO code"
    t.string   "grouping",      null: false, comment: "Separator Format"
    t.index ["code"], name: "res_lang_code_key", unique: true, using: :btree
    t.index ["code"], name: "res_lang_code_uniq", unique: true, using: :btree
    t.index ["name"], name: "res_lang_name_key", unique: true, using: :btree
    t.index ["name"], name: "res_lang_name_uniq", unique: true, using: :btree
  end

  create_table "res_partner", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.text     "comment",                 comment: "Notes"
    t.string   "website",                 comment: "Website"
    t.datetime "create_date",             comment: "Created on"
    t.integer  "color",                   comment: "Color Index"
    t.boolean  "active",                  comment: "Active"
    t.string   "street",                  comment: "Street"
    t.boolean  "supplier",                comment: "Is a Vendor"
    t.string   "city",                    comment: "City"
    t.string   "display_name",            comment: "Display Name"
    t.string   "zip",                     comment: "Zip"
    t.integer  "title",                   comment: "Title"
    t.integer  "country_id",              comment: "Country"
    t.string   "commercial_company_name", comment: "Company Name Entity"
    t.integer  "parent_id",               comment: "Related Company"
    t.string   "company_name",            comment: "Company Name"
    t.boolean  "employee",                comment: "Employee"
    t.string   "ref",                     comment: "Internal Reference"
    t.string   "email",                   comment: "Email"
    t.boolean  "is_company",              comment: "Is a Company"
    t.string   "function",                comment: "Job Position"
    t.string   "lang",                    comment: "Language"
    t.string   "fax",                     comment: "Fax"
    t.string   "street2",                 comment: "Street2"
    t.string   "barcode",                 comment: "Barcode"
    t.string   "phone",                   comment: "Phone"
    t.datetime "write_date",              comment: "Last Updated on"
    t.date     "date",                    comment: "Date"
    t.string   "tz",                      comment: "Timezone"
    t.integer  "write_uid",               comment: "Last Updated by"
    t.boolean  "customer",                comment: "Is a Customer"
    t.integer  "create_uid",              comment: "Created by"
    t.float    "credit_limit",            comment: "Credit Limit"
    t.integer  "user_id",                 comment: "Salesperson"
    t.string   "mobile",                  comment: "Mobile"
    t.string   "type",                    comment: "Address Type"
    t.boolean  "partner_share",           comment: "Share Partner"
    t.string   "vat",                     comment: "TIN"
    t.integer  "state_id",                comment: "State"
    t.integer  "commercial_partner_id",   comment: "Commercial Entity"
    t.index ["commercial_partner_id"], name: "res_partner_commercial_partner_id_index", using: :btree
    t.index ["company_id"], name: "res_partner_company_id_index", using: :btree
    t.index ["date"], name: "res_partner_date_index", using: :btree
    t.index ["display_name"], name: "res_partner_display_name_index", using: :btree
    t.index ["name"], name: "res_partner_name_index", using: :btree
    t.index ["parent_id"], name: "res_partner_parent_id_index", using: :btree
    t.index ["ref"], name: "res_partner_ref_index", using: :btree
  end

  create_table "res_partner_bank", force: :cascade, comment: "Bank Accounts" do |t|
    t.integer  "create_uid",                        comment: "Created by"
    t.integer  "sequence",                          comment: "Sequence"
    t.integer  "company_id",                        comment: "Company"
    t.integer  "bank_id",                           comment: "Bank"
    t.integer  "currency_id",                       comment: "Currency"
    t.datetime "write_date",                        comment: "Last Updated on"
    t.string   "sanitized_acc_number",              comment: "Sanitized Account Number"
    t.datetime "create_date",                       comment: "Created on"
    t.integer  "write_uid",                         comment: "Last Updated by"
    t.integer  "partner_id",                        comment: "Account Holder"
    t.string   "acc_number",           null: false, comment: "Account Number"
    t.index ["partner_id"], name: "res_partner_bank_partner_id_index", using: :btree
    t.index ["sanitized_acc_number", "company_id"], name: "res_partner_bank_unique_number", unique: true, using: :btree
  end

  create_table "res_partner_category", force: :cascade, comment: "Partner Tags" do |t|
    t.integer  "parent_left"
    t.integer  "parent_right"
    t.integer  "create_uid",                comment: "Created by"
    t.string   "name",         null: false, comment: "Tag Name"
    t.integer  "color",                     comment: "Color Index"
    t.integer  "write_uid",                 comment: "Last Updated by"
    t.integer  "parent_id",                 comment: "Parent Category"
    t.datetime "write_date",                comment: "Last Updated on"
    t.boolean  "active",                    comment: "Active"
    t.datetime "create_date",               comment: "Created on"
    t.index ["parent_id"], name: "res_partner_category_parent_id_index", using: :btree
    t.index ["parent_left"], name: "res_partner_category_parent_left_index", using: :btree
    t.index ["parent_right"], name: "res_partner_category_parent_right_index", using: :btree
  end

  create_table "res_partner_res_partner_category_rel", id: false, force: :cascade, comment: "RELATION BETWEEN res_partner_category AND res_partner" do |t|
    t.integer "category_id", null: false
    t.integer "partner_id",  null: false
    t.index ["category_id", "partner_id"], name: "res_partner_res_partner_category_rel_category_id_partner_id_key", unique: true, using: :btree
    t.index ["category_id"], name: "res_partner_res_partner_category_rel_category_id_idx", using: :btree
    t.index ["partner_id"], name: "res_partner_res_partner_category_rel_partner_id_idx", using: :btree
  end

  create_table "res_partner_title", force: :cascade, comment: "res.partner.title" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.string   "name",        null: false, comment: "Title"
    t.string   "shortcut",                 comment: "Abbreviation"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
    t.index ["name"], name: "res_partner_title_name_uniq", unique: true, using: :btree
  end

  create_table "res_request_link", force: :cascade, comment: "res.request.link" do |t|
    t.integer  "create_uid",               comment: "Created by"
    t.string   "name",        null: false, comment: "Name"
    t.string   "object",      null: false, comment: "Object"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.integer  "priority",                 comment: "Priority"
    t.datetime "write_date",               comment: "Last Updated on"
    t.datetime "create_date",              comment: "Created on"
  end

  create_table "res_users", force: :cascade do |t|
    t.boolean  "active",         default: true
    t.string   "login",                         null: false
    t.string   "password"
    t.integer  "company_id",                    null: false
    t.integer  "partner_id",                    null: false
    t.datetime "create_date",                                comment: "Created on"
    t.boolean  "share",                                      comment: "Share User"
    t.integer  "write_uid",                                  comment: "Last Updated by"
    t.integer  "create_uid",                                 comment: "Created by"
    t.integer  "action_id",                                  comment: "Home Action"
    t.datetime "write_date",                                 comment: "Last Updated on"
    t.text     "signature",                                  comment: "Signature"
    t.string   "password_crypt",                             comment: "Encrypted Password"
    t.index ["login"], name: "res_users_login_key", unique: true, using: :btree
  end

  create_table "res_users_log", force: :cascade, comment: "res.users.log" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
    t.datetime "create_date", comment: "Created on"
  end

  create_table "rule_group_rel", id: false, force: :cascade, comment: "RELATION BETWEEN ir_rule AND res_groups" do |t|
    t.integer "rule_group_id", null: false
    t.integer "group_id",      null: false
    t.index ["group_id"], name: "rule_group_rel_group_id_idx", using: :btree
    t.index ["rule_group_id", "group_id"], name: "rule_group_rel_rule_group_id_group_id_key", unique: true, using: :btree
    t.index ["rule_group_id"], name: "rule_group_rel_rule_group_id_idx", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "admin",                  default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "remaining_guest"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["event_id", "person_id"], name: "index_visits_on_event_id_and_person_id", using: :btree
    t.index ["event_id"], name: "index_visits_on_event_id", using: :btree
    t.index ["person_id"], name: "index_visits_on_person_id", using: :btree
  end

  create_table "web_editor_converter_test", force: :cascade, comment: "web_editor.converter.test" do |t|
    t.binary   "binary",        comment: "Binary"
    t.integer  "selection",     comment: "Selection"
    t.integer  "create_uid",    comment: "Created by"
    t.text     "text",          comment: "Text"
    t.float    "float",         comment: "Float"
    t.decimal  "numeric",       comment: "Numeric"
    t.datetime "datetime",      comment: "Datetime"
    t.string   "char",          comment: "Char"
    t.datetime "create_date",   comment: "Created on"
    t.text     "html",          comment: "Html"
    t.string   "selection_str", comment: "Lorsqu'un pancake prend l'avion à destination de Toronto et qu'il fait une escale technique à St Claude, on dit:"
    t.datetime "write_date",    comment: "Last Updated on"
    t.integer  "many2one",      comment: "Many2one"
    t.date     "date",          comment: "Date"
    t.integer  "integer",       comment: "Integer"
    t.integer  "write_uid",     comment: "Last Updated by"
  end

  create_table "web_editor_converter_test_sub", force: :cascade, comment: "web_editor.converter.test.sub" do |t|
    t.integer  "create_uid",  comment: "Created by"
    t.datetime "create_date", comment: "Created on"
    t.string   "name",        comment: "Name"
    t.integer  "write_uid",   comment: "Last Updated by"
    t.datetime "write_date",  comment: "Last Updated on"
  end

  create_table "web_planner", force: :cascade, comment: "Planner" do |t|
    t.integer  "menu_id",             null: false, comment: "Menu"
    t.integer  "create_uid",                       comment: "Created by"
    t.string   "name",                null: false, comment: "Name"
    t.string   "planner_application", null: false, comment: "Planner Application"
    t.integer  "view_id",             null: false, comment: "Template"
    t.integer  "write_uid",                        comment: "Last Updated by"
    t.datetime "create_date",                      comment: "Created on"
    t.datetime "write_date",                       comment: "Last Updated on"
    t.boolean  "active",                           comment: "Active"
    t.text     "tooltip_planner",                  comment: "Planner Tooltips"
  end

  create_table "web_tour_tour", force: :cascade, comment: "Tours" do |t|
    t.integer "user_id",              comment: "Consumed by"
    t.string  "name",    null: false, comment: "Tour name"
  end

  create_table "wizard_ir_model_menu_create", force: :cascade, comment: "wizard.ir.model.menu.create" do |t|
    t.integer  "menu_id",     null: false, comment: "Parent Menu"
    t.integer  "create_uid",               comment: "Created by"
    t.datetime "create_date",              comment: "Created on"
    t.string   "name",        null: false, comment: "Menu Name"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.datetime "write_date",               comment: "Last Updated on"
  end

  create_table "wkf", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "osv",                         null: false
    t.boolean  "on_create",   default: false
    t.integer  "write_uid",                                comment: "Last Updated by"
    t.datetime "write_date",                               comment: "Last Updated on"
    t.datetime "create_date",                              comment: "Created on"
    t.integer  "create_uid",                               comment: "Created by"
    t.index ["on_create"], name: "wkf_on_create_index", using: :btree
    t.index ["osv"], name: "wkf_osv_index", using: :btree
  end

  create_table "wkf_activity", force: :cascade, comment: "workflow.activity" do |t|
    t.integer  "wkf_id",      null: false, comment: "Workflow"
    t.integer  "create_uid",               comment: "Created by"
    t.string   "kind",        null: false, comment: "Kind"
    t.datetime "create_date",              comment: "Created on"
    t.string   "name",        null: false, comment: "Name"
    t.string   "join_mode",   null: false, comment: "Join Mode"
    t.boolean  "flow_stop",                comment: "Flow Stop"
    t.integer  "write_uid",                comment: "Last Updated by"
    t.integer  "subflow_id",               comment: "Subflow"
    t.string   "split_mode",  null: false, comment: "Split Mode"
    t.datetime "write_date",               comment: "Last Updated on"
    t.text     "action",                   comment: "Python Action"
    t.string   "signal_send",              comment: "Signal (subflow.*)"
    t.integer  "action_id",                comment: "Server Action"
    t.boolean  "flow_start",               comment: "Flow Start"
    t.index ["wkf_id"], name: "wkf_activity_wkf_id_index", using: :btree
  end

  create_table "wkf_instance", force: :cascade, comment: "workflow.instance" do |t|
    t.string  "res_type", comment: "Resource Object"
    t.integer "uid",      comment: "User"
    t.integer "wkf_id",   comment: "Workflow"
    t.string  "state",    comment: "Status"
    t.integer "res_id",   comment: "Resource ID"
    t.index ["res_id", "wkf_id"], name: "wkf_instance_res_id_wkf_id_index", using: :btree
    t.index ["res_type", "res_id", "state"], name: "wkf_instance_res_type_res_id_state_index", using: :btree
    t.index ["wkf_id"], name: "wkf_instance_wkf_id_index", using: :btree
  end

  create_table "wkf_transition", force: :cascade, comment: "workflow.transition" do |t|
    t.integer  "create_uid",                   comment: "Created by"
    t.datetime "create_date",                  comment: "Created on"
    t.string   "trigger_model",                comment: "Trigger Object"
    t.integer  "sequence",                     comment: "Sequence"
    t.string   "signal",                       comment: "Signal (Button Name)"
    t.integer  "write_uid",                    comment: "Last Updated by"
    t.integer  "act_from",        null: false, comment: "Source Activity"
    t.string   "condition",       null: false, comment: "Condition"
    t.datetime "write_date",                   comment: "Last Updated on"
    t.string   "trigger_expr_id",              comment: "Trigger Expression"
    t.integer  "group_id",                     comment: "Group Required"
    t.integer  "act_to",          null: false, comment: "Destination Activity"
    t.index ["act_from"], name: "wkf_transition_act_from_index", using: :btree
    t.index ["act_to"], name: "wkf_transition_act_to_index", using: :btree
  end

  create_table "wkf_triggers", force: :cascade, comment: "workflow.triggers" do |t|
    t.integer "instance_id",              comment: "Destination Instance"
    t.integer "workitem_id", null: false, comment: "Workitem"
    t.string  "model",                    comment: "Object"
    t.integer "res_id",                   comment: "Resource ID"
    t.index ["res_id", "model"], name: "wkf_triggers_res_id_model_index", using: :btree
  end

  create_table "wkf_witm_trans", id: false, force: :cascade, comment: "RELATION BETWEEN wkf_instance AND wkf_transition" do |t|
    t.integer "inst_id",  null: false
    t.integer "trans_id", null: false
    t.index ["inst_id", "trans_id"], name: "wkf_witm_trans_inst_id_trans_id_key", unique: true, using: :btree
    t.index ["inst_id"], name: "wkf_witm_trans_inst_id_idx", using: :btree
    t.index ["trans_id"], name: "wkf_witm_trans_trans_id_idx", using: :btree
  end

  create_table "wkf_workitem", force: :cascade, comment: "workflow.workitem" do |t|
    t.integer "act_id",     null: false, comment: "Activity"
    t.integer "inst_id",    null: false, comment: "Instance"
    t.integer "subflow_id",              comment: "Subflow"
    t.string  "state",                   comment: "Status"
    t.index ["act_id"], name: "wkf_workitem_act_id_index", using: :btree
    t.index ["inst_id"], name: "wkf_workitem_inst_id_index", using: :btree
    t.index ["state"], name: "wkf_workitem_state_index", using: :btree
    t.index ["subflow_id"], name: "wkf_workitem_subflow_id_index", using: :btree
  end

  add_foreign_key "base_import_import", "res_users", column: "create_uid", name: "base_import_import_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_import", "res_users", column: "write_uid", name: "base_import_import_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char", "res_users", column: "create_uid", name: "base_import_tests_models_char_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char", "res_users", column: "write_uid", name: "base_import_tests_models_char_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_noreadonly", "res_users", column: "create_uid", name: "base_import_tests_models_char_noreadonly_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_noreadonly", "res_users", column: "write_uid", name: "base_import_tests_models_char_noreadonly_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_readonly", "res_users", column: "create_uid", name: "base_import_tests_models_char_readonly_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_readonly", "res_users", column: "write_uid", name: "base_import_tests_models_char_readonly_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_required", "res_users", column: "create_uid", name: "base_import_tests_models_char_required_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_required", "res_users", column: "write_uid", name: "base_import_tests_models_char_required_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_states", "res_users", column: "create_uid", name: "base_import_tests_models_char_states_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_states", "res_users", column: "write_uid", name: "base_import_tests_models_char_states_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_stillreadonly", "res_users", column: "create_uid", name: "base_import_tests_models_char_stillreadonly_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_char_stillreadonly", "res_users", column: "write_uid", name: "base_import_tests_models_char_stillreadonly_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o", "base_import_tests_models_m2o_related", column: "value", name: "base_import_tests_models_m2o_value_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o", "res_users", column: "create_uid", name: "base_import_tests_models_m2o_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o", "res_users", column: "write_uid", name: "base_import_tests_models_m2o_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_related", "res_users", column: "create_uid", name: "base_import_tests_models_m2o_related_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_related", "res_users", column: "write_uid", name: "base_import_tests_models_m2o_related_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_required", "base_import_tests_models_m2o_required_related", column: "value", name: "base_import_tests_models_m2o_required_value_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_required", "res_users", column: "create_uid", name: "base_import_tests_models_m2o_required_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_required", "res_users", column: "write_uid", name: "base_import_tests_models_m2o_required_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_required_related", "res_users", column: "create_uid", name: "base_import_tests_models_m2o_required_related_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_m2o_required_related", "res_users", column: "write_uid", name: "base_import_tests_models_m2o_required_related_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_o2m", "res_users", column: "create_uid", name: "base_import_tests_models_o2m_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_o2m", "res_users", column: "write_uid", name: "base_import_tests_models_o2m_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_o2m_child", "base_import_tests_models_o2m", column: "parent_id", name: "base_import_tests_models_o2m_child_parent_id_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_o2m_child", "res_users", column: "create_uid", name: "base_import_tests_models_o2m_child_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_o2m_child", "res_users", column: "write_uid", name: "base_import_tests_models_o2m_child_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_preview", "res_users", column: "create_uid", name: "base_import_tests_models_preview_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_import_tests_models_preview", "res_users", column: "write_uid", name: "base_import_tests_models_preview_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_export", "res_users", column: "create_uid", name: "base_language_export_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_export", "res_users", column: "write_uid", name: "base_language_export_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_import", "res_users", column: "create_uid", name: "base_language_import_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_import", "res_users", column: "write_uid", name: "base_language_import_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_install", "res_users", column: "create_uid", name: "base_language_install_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_language_install", "res_users", column: "write_uid", name: "base_language_install_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_configuration", "res_users", column: "create_uid", name: "base_module_configuration_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_configuration", "res_users", column: "write_uid", name: "base_module_configuration_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_update", "res_users", column: "create_uid", name: "base_module_update_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_update", "res_users", column: "write_uid", name: "base_module_update_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_upgrade", "res_users", column: "create_uid", name: "base_module_upgrade_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_module_upgrade", "res_users", column: "write_uid", name: "base_module_upgrade_write_uid_fkey", on_delete: :nullify
  add_foreign_key "base_update_translations", "res_users", column: "create_uid", name: "base_update_translations_create_uid_fkey", on_delete: :nullify
  add_foreign_key "base_update_translations", "res_users", column: "write_uid", name: "base_update_translations_write_uid_fkey", on_delete: :nullify
  add_foreign_key "change_password_user", "change_password_wizard", column: "wizard_id", name: "change_password_user_wizard_id_fkey", on_delete: :nullify
  add_foreign_key "change_password_user", "res_users", column: "create_uid", name: "change_password_user_create_uid_fkey", on_delete: :nullify
  add_foreign_key "change_password_user", "res_users", column: "user_id", name: "change_password_user_user_id_fkey", on_delete: :cascade
  add_foreign_key "change_password_user", "res_users", column: "write_uid", name: "change_password_user_write_uid_fkey", on_delete: :nullify
  add_foreign_key "change_password_wizard", "res_users", column: "create_uid", name: "change_password_wizard_create_uid_fkey", on_delete: :nullify
  add_foreign_key "change_password_wizard", "res_users", column: "write_uid", name: "change_password_wizard_write_uid_fkey", on_delete: :nullify
  add_foreign_key "drinks", "events"
  add_foreign_key "drinks", "people"
  add_foreign_key "guests", "events"
  add_foreign_key "guests", "people"
  add_foreign_key "guests", "users"
  add_foreign_key "ir_act_client", "res_users", column: "create_uid", name: "ir_act_client_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_client", "res_users", column: "write_uid", name: "ir_act_client_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_report_xml", "ir_values", column: "ir_values_id", name: "ir_act_report_xml_ir_values_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_report_xml", "res_users", column: "create_uid", name: "ir_act_report_xml_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_report_xml", "res_users", column: "write_uid", name: "ir_act_report_xml_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model", column: "crud_model_id", name: "ir_act_server_crud_model_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model", column: "model_id", name: "ir_act_server_model_id_fkey", on_delete: :cascade
  add_foreign_key "ir_act_server", "ir_model", column: "sub_object", name: "ir_act_server_sub_object_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model", column: "wkf_model_id", name: "ir_act_server_wkf_model_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model_fields", column: "link_field_id", name: "ir_act_server_link_field_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model_fields", column: "model_object_field", name: "ir_act_server_model_object_field_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model_fields", column: "sub_model_object_field", name: "ir_act_server_sub_model_object_field_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_model_fields", column: "wkf_field_id", name: "ir_act_server_wkf_field_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "ir_values", column: "menu_ir_values_id", name: "ir_act_server_menu_ir_values_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "res_users", column: "create_uid", name: "ir_act_server_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "res_users", column: "write_uid", name: "ir_act_server_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_server", "wkf_transition", name: "ir_act_server_wkf_transition_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_url", "res_users", column: "create_uid", name: "ir_act_url_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_url", "res_users", column: "write_uid", name: "ir_act_url_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window", "ir_ui_view", column: "search_view_id", name: "ir_act_window_search_view_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window", "ir_ui_view", column: "view_id", name: "ir_act_window_view_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window", "res_users", column: "create_uid", name: "ir_act_window_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window", "res_users", column: "write_uid", name: "ir_act_window_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window_group_rel", "ir_act_window", column: "act_id", name: "ir_act_window_group_rel_act_id_fkey", on_delete: :cascade
  add_foreign_key "ir_act_window_group_rel", "res_groups", column: "gid", name: "ir_act_window_group_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "ir_act_window_view", "ir_act_window", column: "act_window_id", name: "ir_act_window_view_act_window_id_fkey", on_delete: :cascade
  add_foreign_key "ir_act_window_view", "ir_ui_view", column: "view_id", name: "ir_act_window_view_view_id_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window_view", "res_users", column: "create_uid", name: "ir_act_window_view_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_act_window_view", "res_users", column: "write_uid", name: "ir_act_window_view_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_actions", "res_users", column: "create_uid", name: "ir_actions_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_actions", "res_users", column: "create_uid", name: "ir_actions_create_uid_fkey1", on_delete: :nullify
  add_foreign_key "ir_actions", "res_users", column: "write_uid", name: "ir_actions_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_actions", "res_users", column: "write_uid", name: "ir_actions_write_uid_fkey1", on_delete: :nullify
  add_foreign_key "ir_actions_todo", "res_users", column: "create_uid", name: "ir_actions_todo_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_actions_todo", "res_users", column: "write_uid", name: "ir_actions_todo_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_attachment", "res_company", column: "company_id", name: "ir_attachment_company_id_fkey", on_delete: :nullify
  add_foreign_key "ir_attachment", "res_users", column: "create_uid", name: "ir_attachment_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_attachment", "res_users", column: "write_uid", name: "ir_attachment_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_config_parameter", "res_users", column: "create_uid", name: "ir_config_parameter_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_config_parameter", "res_users", column: "write_uid", name: "ir_config_parameter_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_config_parameter_groups_rel", "ir_config_parameter", column: "icp_id", name: "ir_config_parameter_groups_rel_icp_id_fkey", on_delete: :cascade
  add_foreign_key "ir_config_parameter_groups_rel", "res_groups", column: "group_id", name: "ir_config_parameter_groups_rel_group_id_fkey", on_delete: :cascade
  add_foreign_key "ir_cron", "res_users", column: "create_uid", name: "ir_cron_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_cron", "res_users", column: "user_id", name: "ir_cron_user_id_fkey", on_delete: :nullify
  add_foreign_key "ir_cron", "res_users", column: "write_uid", name: "ir_cron_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_exports", "res_users", column: "create_uid", name: "ir_exports_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_exports", "res_users", column: "write_uid", name: "ir_exports_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_exports_line", "ir_exports", column: "export_id", name: "ir_exports_line_export_id_fkey", on_delete: :cascade
  add_foreign_key "ir_exports_line", "res_users", column: "create_uid", name: "ir_exports_line_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_exports_line", "res_users", column: "write_uid", name: "ir_exports_line_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_filters", "res_users", column: "create_uid", name: "ir_filters_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_filters", "res_users", column: "user_id", name: "ir_filters_user_id_fkey", on_delete: :cascade
  add_foreign_key "ir_filters", "res_users", column: "write_uid", name: "ir_filters_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_logging", "res_users", column: "write_uid", name: "ir_logging_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_mail_server", "res_users", column: "create_uid", name: "ir_mail_server_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_mail_server", "res_users", column: "write_uid", name: "ir_mail_server_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model", "res_users", column: "create_uid", name: "ir_model_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model", "res_users", column: "write_uid", name: "ir_model_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_access", "ir_model", column: "model_id", name: "ir_model_access_model_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_access", "res_groups", column: "group_id", name: "ir_model_access_group_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_access", "res_users", column: "create_uid", name: "ir_model_access_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_access", "res_users", column: "write_uid", name: "ir_model_access_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_constraint", "ir_model", column: "model", name: "ir_model_constraint_model_fkey", on_delete: :nullify
  add_foreign_key "ir_model_constraint", "ir_module_module", column: "module", name: "ir_model_constraint_module_fkey", on_delete: :nullify
  add_foreign_key "ir_model_constraint", "res_users", column: "create_uid", name: "ir_model_constraint_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_constraint", "res_users", column: "write_uid", name: "ir_model_constraint_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_data", "res_users", column: "create_uid", name: "ir_model_data_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_data", "res_users", column: "write_uid", name: "ir_model_data_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_fields", "ir_model", column: "model_id", name: "ir_model_fields_model_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_fields", "ir_model_fields", column: "serialization_field_id", name: "ir_model_fields_serialization_field_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_fields", "res_users", column: "create_uid", name: "ir_model_fields_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_fields", "res_users", column: "write_uid", name: "ir_model_fields_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_fields_group_rel", "ir_model_fields", column: "field_id", name: "ir_model_fields_group_rel_field_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_fields_group_rel", "res_groups", column: "group_id", name: "ir_model_fields_group_rel_group_id_fkey", on_delete: :cascade
  add_foreign_key "ir_model_relation", "ir_model", column: "model", name: "ir_model_relation_model_fkey", on_delete: :nullify
  add_foreign_key "ir_model_relation", "ir_module_module", column: "module", name: "ir_model_relation_module_fkey", on_delete: :nullify
  add_foreign_key "ir_model_relation", "res_users", column: "create_uid", name: "ir_model_relation_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_model_relation", "res_users", column: "write_uid", name: "ir_model_relation_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_category", "ir_module_category", column: "parent_id", name: "ir_module_category_parent_id_fkey", on_delete: :nullify
  add_foreign_key "ir_module_category", "res_users", column: "create_uid", name: "ir_module_category_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_category", "res_users", column: "write_uid", name: "ir_module_category_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_module", "ir_module_category", column: "category_id", name: "ir_module_module_category_id_fkey", on_delete: :nullify
  add_foreign_key "ir_module_module", "res_users", column: "create_uid", name: "ir_module_module_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_module", "res_users", column: "write_uid", name: "ir_module_module_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_module_dependency", "ir_module_module", column: "module_id", name: "ir_module_module_dependency_module_id_fkey", on_delete: :cascade
  add_foreign_key "ir_module_module_dependency", "res_users", column: "create_uid", name: "ir_module_module_dependency_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_module_module_dependency", "res_users", column: "write_uid", name: "ir_module_module_dependency_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_property", "ir_model_fields", column: "fields_id", name: "ir_property_fields_id_fkey", on_delete: :cascade
  add_foreign_key "ir_property", "res_company", column: "company_id", name: "ir_property_company_id_fkey", on_delete: :nullify
  add_foreign_key "ir_property", "res_users", column: "create_uid", name: "ir_property_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_property", "res_users", column: "write_uid", name: "ir_property_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_rule", "ir_model", column: "model_id", name: "ir_rule_model_id_fkey", on_delete: :cascade
  add_foreign_key "ir_rule", "res_users", column: "create_uid", name: "ir_rule_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_rule", "res_users", column: "write_uid", name: "ir_rule_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_sequence", "res_company", column: "company_id", name: "ir_sequence_company_id_fkey", on_delete: :nullify
  add_foreign_key "ir_sequence", "res_users", column: "create_uid", name: "ir_sequence_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_sequence", "res_users", column: "write_uid", name: "ir_sequence_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_sequence_date_range", "ir_sequence", column: "sequence_id", name: "ir_sequence_date_range_sequence_id_fkey", on_delete: :cascade
  add_foreign_key "ir_sequence_date_range", "res_users", column: "create_uid", name: "ir_sequence_date_range_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_sequence_date_range", "res_users", column: "write_uid", name: "ir_sequence_date_range_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_server_object_lines", "ir_act_server", column: "server_id", name: "ir_server_object_lines_server_id_fkey", on_delete: :cascade
  add_foreign_key "ir_server_object_lines", "ir_model_fields", column: "col1", name: "ir_server_object_lines_col1_fkey", on_delete: :nullify
  add_foreign_key "ir_server_object_lines", "res_users", column: "create_uid", name: "ir_server_object_lines_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_server_object_lines", "res_users", column: "write_uid", name: "ir_server_object_lines_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_translation", "res_lang", column: "lang", primary_key: "code", name: "ir_translation_lang_fkey_res_lang"
  add_foreign_key "ir_ui_menu", "ir_ui_menu", column: "parent_id", name: "ir_ui_menu_parent_id_fkey", on_delete: :restrict
  add_foreign_key "ir_ui_menu", "res_users", column: "create_uid", name: "ir_ui_menu_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_menu", "res_users", column: "write_uid", name: "ir_ui_menu_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_menu_group_rel", "ir_ui_menu", column: "menu_id", name: "ir_ui_menu_group_rel_menu_id_fkey", on_delete: :cascade
  add_foreign_key "ir_ui_menu_group_rel", "res_groups", column: "gid", name: "ir_ui_menu_group_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "ir_ui_view", "ir_model_data", column: "model_data_id", name: "ir_ui_view_model_data_id_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_view", "ir_ui_view", column: "inherit_id", name: "ir_ui_view_inherit_id_fkey", on_delete: :restrict
  add_foreign_key "ir_ui_view", "res_users", column: "create_uid", name: "ir_ui_view_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_view", "res_users", column: "write_uid", name: "ir_ui_view_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_view_custom", "ir_ui_view", column: "ref_id", name: "ir_ui_view_custom_ref_id_fkey", on_delete: :cascade
  add_foreign_key "ir_ui_view_custom", "res_users", column: "create_uid", name: "ir_ui_view_custom_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_view_custom", "res_users", column: "user_id", name: "ir_ui_view_custom_user_id_fkey", on_delete: :cascade
  add_foreign_key "ir_ui_view_custom", "res_users", column: "write_uid", name: "ir_ui_view_custom_write_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_ui_view_group_rel", "ir_ui_view", column: "view_id", name: "ir_ui_view_group_rel_view_id_fkey", on_delete: :cascade
  add_foreign_key "ir_ui_view_group_rel", "res_groups", column: "group_id", name: "ir_ui_view_group_rel_group_id_fkey", on_delete: :cascade
  add_foreign_key "ir_values", "ir_model", column: "model_id", name: "ir_values_model_id_fkey", on_delete: :nullify
  add_foreign_key "ir_values", "res_company", column: "company_id", name: "ir_values_company_id_fkey", on_delete: :cascade
  add_foreign_key "ir_values", "res_users", column: "create_uid", name: "ir_values_create_uid_fkey", on_delete: :nullify
  add_foreign_key "ir_values", "res_users", column: "user_id", name: "ir_values_user_id_fkey", on_delete: :cascade
  add_foreign_key "ir_values", "res_users", column: "write_uid", name: "ir_values_write_uid_fkey", on_delete: :nullify
  add_foreign_key "profiles", "users"
  add_foreign_key "rel_modules_langexport", "base_language_export", column: "wiz_id", name: "rel_modules_langexport_wiz_id_fkey", on_delete: :cascade
  add_foreign_key "rel_modules_langexport", "ir_module_module", column: "module_id", name: "rel_modules_langexport_module_id_fkey", on_delete: :cascade
  add_foreign_key "rel_server_actions", "ir_act_server", column: "action_id", name: "rel_server_actions_action_id_fkey", on_delete: :cascade
  add_foreign_key "rel_server_actions", "ir_act_server", column: "server_id", name: "rel_server_actions_server_id_fkey", on_delete: :cascade
  add_foreign_key "res_bank", "res_country", column: "country", name: "res_bank_country_fkey", on_delete: :nullify
  add_foreign_key "res_bank", "res_country_state", column: "state", name: "res_bank_state_fkey", on_delete: :nullify
  add_foreign_key "res_bank", "res_users", column: "create_uid", name: "res_bank_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_bank", "res_users", column: "write_uid", name: "res_bank_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_company", column: "parent_id", name: "res_company_parent_id_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_currency", column: "currency_id", name: "res_company_currency_id_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_font", column: "font", name: "res_company_font_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_partner", column: "partner_id", name: "res_company_partner_id_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_users", column: "create_uid", name: "res_company_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_company", "res_users", column: "write_uid", name: "res_company_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_company_users_rel", "res_company", column: "cid", name: "res_company_users_rel_cid_fkey", on_delete: :cascade
  add_foreign_key "res_company_users_rel", "res_users", column: "user_id", name: "res_company_users_rel_user_id_fkey", on_delete: :cascade
  add_foreign_key "res_config", "res_users", column: "create_uid", name: "res_config_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_config", "res_users", column: "write_uid", name: "res_config_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_config_installer", "res_users", column: "create_uid", name: "res_config_installer_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_config_installer", "res_users", column: "write_uid", name: "res_config_installer_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_config_settings", "res_users", column: "create_uid", name: "res_config_settings_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_config_settings", "res_users", column: "write_uid", name: "res_config_settings_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country", "res_currency", column: "currency_id", name: "res_country_currency_id_fkey", on_delete: :nullify
  add_foreign_key "res_country", "res_users", column: "create_uid", name: "res_country_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country", "res_users", column: "write_uid", name: "res_country_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country_group", "res_users", column: "create_uid", name: "res_country_group_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country_group", "res_users", column: "write_uid", name: "res_country_group_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country_res_country_group_rel", "res_country", name: "res_country_res_country_group_rel_res_country_id_fkey", on_delete: :cascade
  add_foreign_key "res_country_res_country_group_rel", "res_country_group", name: "res_country_res_country_group_rel_res_country_group_id_fkey", on_delete: :cascade
  add_foreign_key "res_country_state", "res_country", column: "country_id", name: "res_country_state_country_id_fkey", on_delete: :nullify
  add_foreign_key "res_country_state", "res_users", column: "create_uid", name: "res_country_state_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_country_state", "res_users", column: "write_uid", name: "res_country_state_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_currency", "res_users", column: "create_uid", name: "res_currency_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_currency", "res_users", column: "write_uid", name: "res_currency_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_currency_rate", "res_company", column: "company_id", name: "res_currency_rate_company_id_fkey", on_delete: :nullify
  add_foreign_key "res_currency_rate", "res_currency", column: "currency_id", name: "res_currency_rate_currency_id_fkey", on_delete: :nullify
  add_foreign_key "res_currency_rate", "res_users", column: "create_uid", name: "res_currency_rate_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_currency_rate", "res_users", column: "write_uid", name: "res_currency_rate_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_font", "res_users", column: "create_uid", name: "res_font_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_font", "res_users", column: "write_uid", name: "res_font_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_groups", "ir_module_category", column: "category_id", name: "res_groups_category_id_fkey", on_delete: :nullify
  add_foreign_key "res_groups", "res_users", column: "create_uid", name: "res_groups_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_groups", "res_users", column: "write_uid", name: "res_groups_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_groups_action_rel", "ir_actions_todo", column: "uid", name: "res_groups_action_rel_uid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_action_rel", "res_groups", column: "gid", name: "res_groups_action_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_implied_rel", "res_groups", column: "gid", name: "res_groups_implied_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_implied_rel", "res_groups", column: "hid", name: "res_groups_implied_rel_hid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_report_rel", "ir_act_report_xml", column: "uid", name: "res_groups_report_rel_uid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_report_rel", "res_groups", column: "gid", name: "res_groups_report_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_users_rel", "res_groups", column: "gid", name: "res_groups_users_rel_gid_fkey", on_delete: :cascade
  add_foreign_key "res_groups_users_rel", "res_users", column: "uid", name: "res_groups_users_rel_uid_fkey", on_delete: :cascade
  add_foreign_key "res_lang", "res_users", column: "create_uid", name: "res_lang_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_lang", "res_users", column: "write_uid", name: "res_lang_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_company", column: "company_id", name: "res_partner_company_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_country", column: "country_id", name: "res_partner_country_id_fkey", on_delete: :restrict
  add_foreign_key "res_partner", "res_country_state", column: "state_id", name: "res_partner_state_id_fkey", on_delete: :restrict
  add_foreign_key "res_partner", "res_partner", column: "commercial_partner_id", name: "res_partner_commercial_partner_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_partner", column: "parent_id", name: "res_partner_parent_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_partner_title", column: "title", name: "res_partner_title_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_users", column: "create_uid", name: "res_partner_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_users", column: "user_id", name: "res_partner_user_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner", "res_users", column: "write_uid", name: "res_partner_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_bank", "res_bank", column: "bank_id", name: "res_partner_bank_bank_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner_bank", "res_company", column: "company_id", name: "res_partner_bank_company_id_fkey", on_delete: :cascade
  add_foreign_key "res_partner_bank", "res_currency", column: "currency_id", name: "res_partner_bank_currency_id_fkey", on_delete: :nullify
  add_foreign_key "res_partner_bank", "res_partner", column: "partner_id", name: "res_partner_bank_partner_id_fkey", on_delete: :cascade
  add_foreign_key "res_partner_bank", "res_users", column: "create_uid", name: "res_partner_bank_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_bank", "res_users", column: "write_uid", name: "res_partner_bank_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_category", "res_partner_category", column: "parent_id", name: "res_partner_category_parent_id_fkey", on_delete: :cascade
  add_foreign_key "res_partner_category", "res_users", column: "create_uid", name: "res_partner_category_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_category", "res_users", column: "write_uid", name: "res_partner_category_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_res_partner_category_rel", "res_partner", column: "partner_id", name: "res_partner_res_partner_category_rel_partner_id_fkey", on_delete: :cascade
  add_foreign_key "res_partner_res_partner_category_rel", "res_partner_category", column: "category_id", name: "res_partner_res_partner_category_rel_category_id_fkey", on_delete: :cascade
  add_foreign_key "res_partner_title", "res_users", column: "create_uid", name: "res_partner_title_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_partner_title", "res_users", column: "write_uid", name: "res_partner_title_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_request_link", "res_users", column: "create_uid", name: "res_request_link_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_request_link", "res_users", column: "write_uid", name: "res_request_link_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_users", "res_company", column: "company_id", name: "res_users_company_id_fkey", on_delete: :nullify
  add_foreign_key "res_users", "res_partner", column: "partner_id", name: "res_users_partner_id_fkey", on_delete: :restrict
  add_foreign_key "res_users", "res_users", column: "create_uid", name: "res_users_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_users", "res_users", column: "write_uid", name: "res_users_write_uid_fkey", on_delete: :nullify
  add_foreign_key "res_users_log", "res_users", column: "create_uid", name: "res_users_log_create_uid_fkey", on_delete: :nullify
  add_foreign_key "res_users_log", "res_users", column: "write_uid", name: "res_users_log_write_uid_fkey", on_delete: :nullify
  add_foreign_key "rule_group_rel", "ir_rule", column: "rule_group_id", name: "rule_group_rel_rule_group_id_fkey", on_delete: :cascade
  add_foreign_key "rule_group_rel", "res_groups", column: "group_id", name: "rule_group_rel_group_id_fkey", on_delete: :cascade
  add_foreign_key "visits", "events"
  add_foreign_key "visits", "people"
  add_foreign_key "web_editor_converter_test", "res_users", column: "create_uid", name: "web_editor_converter_test_create_uid_fkey", on_delete: :nullify
  add_foreign_key "web_editor_converter_test", "res_users", column: "write_uid", name: "web_editor_converter_test_write_uid_fkey", on_delete: :nullify
  add_foreign_key "web_editor_converter_test", "web_editor_converter_test_sub", column: "many2one", name: "web_editor_converter_test_many2one_fkey", on_delete: :nullify
  add_foreign_key "web_editor_converter_test_sub", "res_users", column: "create_uid", name: "web_editor_converter_test_sub_create_uid_fkey", on_delete: :nullify
  add_foreign_key "web_editor_converter_test_sub", "res_users", column: "write_uid", name: "web_editor_converter_test_sub_write_uid_fkey", on_delete: :nullify
  add_foreign_key "web_planner", "ir_ui_menu", column: "menu_id", name: "web_planner_menu_id_fkey", on_delete: :nullify
  add_foreign_key "web_planner", "ir_ui_view", column: "view_id", name: "web_planner_view_id_fkey", on_delete: :nullify
  add_foreign_key "web_planner", "res_users", column: "create_uid", name: "web_planner_create_uid_fkey", on_delete: :nullify
  add_foreign_key "web_planner", "res_users", column: "write_uid", name: "web_planner_write_uid_fkey", on_delete: :nullify
  add_foreign_key "web_tour_tour", "res_users", column: "user_id", name: "web_tour_tour_user_id_fkey", on_delete: :nullify
  add_foreign_key "wizard_ir_model_menu_create", "ir_ui_menu", column: "menu_id", name: "wizard_ir_model_menu_create_menu_id_fkey", on_delete: :cascade
  add_foreign_key "wizard_ir_model_menu_create", "res_users", column: "create_uid", name: "wizard_ir_model_menu_create_create_uid_fkey", on_delete: :nullify
  add_foreign_key "wizard_ir_model_menu_create", "res_users", column: "write_uid", name: "wizard_ir_model_menu_create_write_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf", "res_users", column: "create_uid", name: "wkf_create_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf", "res_users", column: "write_uid", name: "wkf_write_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf_activity", "ir_act_server", column: "action_id", name: "wkf_activity_action_id_fkey", on_delete: :nullify
  add_foreign_key "wkf_activity", "res_users", column: "create_uid", name: "wkf_activity_create_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf_activity", "res_users", column: "write_uid", name: "wkf_activity_write_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf_activity", "wkf", column: "subflow_id", name: "wkf_activity_subflow_id_fkey", on_delete: :nullify
  add_foreign_key "wkf_activity", "wkf", name: "wkf_activity_wkf_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_instance", "wkf", name: "wkf_instance_wkf_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_transition", "res_groups", column: "group_id", name: "wkf_transition_group_id_fkey", on_delete: :nullify
  add_foreign_key "wkf_transition", "res_users", column: "create_uid", name: "wkf_transition_create_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf_transition", "res_users", column: "write_uid", name: "wkf_transition_write_uid_fkey", on_delete: :nullify
  add_foreign_key "wkf_transition", "wkf_activity", column: "act_from", name: "wkf_transition_act_from_fkey", on_delete: :cascade
  add_foreign_key "wkf_transition", "wkf_activity", column: "act_to", name: "wkf_transition_act_to_fkey", on_delete: :cascade
  add_foreign_key "wkf_triggers", "wkf_instance", column: "instance_id", name: "wkf_triggers_instance_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_triggers", "wkf_workitem", column: "workitem_id", name: "wkf_triggers_workitem_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_witm_trans", "wkf_instance", column: "inst_id", name: "wkf_witm_trans_inst_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_witm_trans", "wkf_transition", column: "trans_id", name: "wkf_witm_trans_trans_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_workitem", "wkf_activity", column: "act_id", name: "wkf_workitem_act_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_workitem", "wkf_instance", column: "inst_id", name: "wkf_workitem_inst_id_fkey", on_delete: :cascade
  add_foreign_key "wkf_workitem", "wkf_instance", column: "subflow_id", name: "wkf_workitem_subflow_id_fkey", on_delete: :nullify
end
