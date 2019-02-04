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

ActiveRecord::Schema.define(version: 20190203050402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "federal_agencies", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "facebook_id"
    t.string "twitter_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "federal_legislators", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "facebook_id"
    t.string "twitter_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "governors", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "facebook_id"
    t.string "twitter_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "postable_type"
    t.bigint "postable_id"
    t.string "content", null: false
    t.string "social_media", null: false
    t.string "link", null: false
    t.datetime "created_at", null: false
    t.index ["postable_type", "postable_id"], name: "index_posts_on_postable_type_and_postable_id"
    t.index ["social_media", "postable_type", "created_at"], name: "index_posts_on_social_media_and_postable_type_and_created_at"
  end

end
