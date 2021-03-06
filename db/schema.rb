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

ActiveRecord::Schema.define(version: 20161214134746) do

  create_table "claim_opportunities", force: :cascade do |t|
    t.string   "please_explain_why_you_are_interested_in_this_opportunity"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.integer  "volunteer_opportunity_id"
    t.integer  "organization_id"
    t.integer  "volunteer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name"
    t.boolean  "volunteer"
    t.string   "biographical_information"
    t.string   "address"
    t.integer  "phone_number",             limit: 8
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "website"
    t.string   "about1"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "volunteer_opportunities", force: :cascade do |t|
    t.string   "Organization"
    t.string   "Address"
    t.string   "Phone"
    t.string   "Website"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.text     "description"
    t.string   "event_date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "end_date"
    t.text     "monday_morning"
    t.text     "monday_afternoon"
    t.text     "monday_evening"
    t.text     "tuesday_morning"
    t.text     "tuesday_afternoon"
    t.text     "tuesday_evening"
    t.text     "wednesday_morning"
    t.text     "wednesday_afternoon"
    t.text     "wednesday_evening"
    t.text     "thursday_morning"
    t.text     "thursday_afternoon"
    t.text     "thursday_evening"
    t.text     "friday_morning"
    t.text     "friday_afternoon"
    t.text     "friday_evening"
    t.text     "saturday_morning"
    t.text     "saturday_afternoon"
    t.text     "saturday_evening"
    t.text     "sunday_morning"
    t.text     "sunday_afternoon"
    t.text     "sunday_evening"
    t.text     "skill_needed"
    t.text     "what_to_bring"
    t.text     "chemistry"
    t.text     "biology_medical"
    t.text     "social_sciences"
    t.text     "engineering_physics"
    t.text     "english_communication"
    t.text     "journalism"
    t.text     "marketing_business"
    t.text     "hospitality"
    t.text     "mathematics"
    t.text     "art_music"
  end

end
