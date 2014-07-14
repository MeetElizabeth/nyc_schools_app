# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140713234104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boroughs", force: true do |t|
    t.text    "name"
    t.integer "total_pop"
    t.integer "enrollment"
    t.integer "math_num_tested"
    t.float   "math_pct_lvl1"
    t.float   "math_pct_lvl2"
    t.float   "math_pct_lvl3"
    t.float   "math_pct_lvl4"
    t.integer "ela_num_tested"
    t.float   "ela_pct_lvl1"
    t.float   "ela_pct_lvl2"
    t.float   "ela_pct_lvl3"
    t.float   "ela_pct_lvl4"
  end

  create_table "districts", force: true do |t|
    t.string  "district_title"
    t.float   "avg_attendance"
    t.integer "avg_enrollment"
    t.integer "math_num_tested"
    t.float   "math_pct_lvl1"
    t.float   "math_pct_lvl2"
    t.float   "math_pct_lvl3"
    t.float   "math_pct_lvl4"
    t.integer "ela_num_tested"
    t.float   "ela_pct_lvl1"
    t.float   "ela_pct_lvl2"
    t.float   "ela_pct_lvl3"
    t.float   "ela_pct_lvl4"
    t.integer "borough_id"
  end

  create_table "pg_search_documents", force: true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string  "system_code"
    t.string  "name"
    t.string  "managed_by"
    t.string  "category"
    t.string  "grades"
    t.string  "open_date"
    t.text    "address"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "principal_name"
    t.string  "district_code"
    t.string  "pr_overall"
    t.string  "progress_grade"
    t.string  "performance_grade"
    t.string  "env_grade"
    t.string  "readiness_grade"
    t.string  "2012_grade"
    t.string  "2011_grade"
    t.string  "2010_grade"
    t.integer "math_num_tested"
    t.float   "math_pct_lvl1"
    t.float   "math_pct_lvl2"
    t.float   "math_pct_lvl3"
    t.float   "math_pct_lvl4"
    t.integer "ela_num_tested"
    t.float   "ela_pct_lvl1"
    t.float   "ela_pct_lvl2"
    t.float   "ela_pct_lvl3"
    t.float   "ela_pct_lvl4"
    t.integer "district_id"
  end

end
