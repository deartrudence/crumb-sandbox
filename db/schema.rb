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

ActiveRecord::Schema.define(version: 20180703192926) do

  create_table "campaign_colors", force: :cascade do |t|
    t.integer "campaign_id"
    t.string "hex_value"
    t.string "color_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_colors_on_campaign_id"
  end

  create_table "campaign_target_pages", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "target_page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_target_pages_on_campaign_id"
    t.index ["target_page_id"], name: "index_campaign_target_pages_on_target_page_id"
  end

  create_table "campaign_tasks", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "task_id"
    t.string "incentive_type"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_tasks_on_campaign_id"
    t.index ["task_id"], name: "index_campaign_tasks_on_task_id"
  end

  create_table "campaign_templates", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "crumb_template_id"
    t.index ["campaign_id"], name: "index_campaign_templates_on_campaign_id"
    t.index ["crumb_template_id"], name: "index_campaign_templates_on_crumb_template_id"
    t.index ["template_id"], name: "index_campaign_templates_on_template_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.integer "user_id"
    t.string "compaign_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "crumb_templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_pages", force: :cascade do |t|
    t.integer "campaign_id"
    t.string "target_page_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_target_pages_on_campaign_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "store_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
