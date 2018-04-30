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

ActiveRecord::Schema.define(version: 2018_04_30_182143) do

  create_table "catagories", force: :cascade do |t|
    t.integer "major_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["major_id"], name: "index_catagories_on_major_id"
  end

  create_table "catalogs", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_catagories", force: :cascade do |t|
    t.integer "course_id"
    t.integer "catagory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catagory_id"], name: "index_course_catagories_on_catagory_id"
    t.index ["course_id"], name: "index_course_catagories_on_course_id"
  end

  create_table "course_catalogs", force: :cascade do |t|
    t.integer "course_id"
    t.integer "catalog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalog_id"], name: "index_course_catalogs_on_catalog_id"
    t.index ["course_id"], name: "index_course_catalogs_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "designator"
    t.string "description"
    t.integer "credits"
  end

  create_table "majors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "catalog_id"
    t.index ["catalog_id"], name: "index_majors_on_catalog_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "major_id"
    t.integer "catalog_id"
    t.index ["catalog_id"], name: "index_plans_on_catalog_id"
    t.index ["major_id"], name: "index_plans_on_major_id"
  end

  create_table "term_courses", force: :cascade do |t|
    t.integer "term_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_term_courses_on_course_id"
    t.index ["term_id"], name: "index_term_courses_on_term_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year_id"
    t.index ["year_id"], name: "index_terms_on_year_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "login"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_years_on_plan_id"
  end

end
