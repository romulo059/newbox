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

ActiveRecord::Schema.define(version: 2019_09_08_160255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "os"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vulnerabilities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "criticality"
    t.string "solution"
    t.integer "cvss_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "asset_id"
    t.index ["asset_id"], name: "index_vulnerabilities_on_asset_id"
  end

  add_foreign_key "vulnerabilities", "assets"
end
