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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151221000120) do
=======
ActiveRecord::Schema.define(version: 20160114224211) do
>>>>>>> productive

  create_table "focus", force: true do |t|
    t.string   "date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.text     "notes"
    t.text     "why"
    t.text     "why_not"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

<<<<<<< HEAD
=======
  create_table "predays", force: true do |t|
    t.string   "thing"
    t.text     "why"
    t.text     "whynot"
    t.text     "notes"
    t.integer  "productivity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "predays", ["productivity_id"], name: "index_predays_on_productivity_id"

>>>>>>> productive
  create_table "previews", force: true do |t|
    t.string   "things"
    t.text     "why_most_important"
    t.text     "why_not"
    t.string   "time_estimated"
    t.integer  "focus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "previews", ["focus_id"], name: "index_previews_on_focus_id"

<<<<<<< HEAD
=======
  create_table "productivities", force: true do |t|
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

>>>>>>> productive
  create_table "teams", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
