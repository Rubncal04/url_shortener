# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_29_040954) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "url_visits", force: :cascade do |t|
    t.bigint "url_id", null: false
    t.string "platform"
    t.string "browser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url_id"], name: "index_url_visits_on_url_id"
  end

  create_table "urls", force: :cascade do |t|
    t.string "original_url", null: false
    t.string "short_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["short_url"], name: "index_urls_on_short_url", unique: true
  end

  add_foreign_key "url_visits", "urls"
end
