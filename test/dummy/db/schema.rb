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

ActiveRecord::Schema.define(version: 2018_12_18_183815) do

  create_table "minerva_assignments", force: :cascade do |t|
    t.string "title"
    t.integer "interface_id"
    t.boolean "automated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interface_id"], name: "index_minerva_assignments_on_interface_id"
  end

  create_table "minerva_interfaces", force: :cascade do |t|
    t.string "title"
    t.string "code_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minerva_states", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "user_id"
    t.integer "role_id"
    t.integer "work_id"
    t.integer "assignment_id"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_minerva_states_on_assignment_id"
    t.index ["creator_id"], name: "index_minerva_states_on_creator_id"
    t.index ["role_id"], name: "index_minerva_states_on_role_id"
    t.index ["status_id"], name: "index_minerva_states_on_status_id"
    t.index ["user_id"], name: "index_minerva_states_on_user_id"
    t.index ["work_id"], name: "index_minerva_states_on_work_id"
  end

  create_table "minerva_statuses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minerva_workflows", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "project_id"
    t.text "task_list"
    t.string "title"
    t.boolean "ordered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_minerva_workflows_on_creator_id"
    t.index ["project_id"], name: "index_minerva_workflows_on_project_id"
  end

end
