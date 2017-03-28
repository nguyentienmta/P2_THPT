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

ActiveRecord::Schema.define(version: 20170328065245) do

  create_table "certificates", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "maximum"
    t.string   "description"
    t.integer  "school_year_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["school_year_id"], name: "index_class_rooms_on_school_year_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_years", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "start_year"
    t.integer  "end_year"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "birthday"
    t.integer  "sex"
    t.string   "address"
    t.integer  "class_room_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["class_room_id"], name: "index_students_on_class_room_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "lesson"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teacher_classes", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "class_room_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["class_room_id"], name: "index_teacher_classes_on_class_room_id"
    t.index ["teacher_id"], name: "index_teacher_classes_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "birthday"
    t.string   "phone"
    t.string   "address"
    t.string   "start_date"
    t.boolean  "isHeadMaster"
    t.integer  "subject_id"
    t.integer  "certificate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["certificate_id"], name: "index_teachers_on_certificate_id"
    t.index ["subject_id"], name: "index_teachers_on_subject_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
