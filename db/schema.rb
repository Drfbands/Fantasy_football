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

ActiveRecord::Schema.define(version: 20160201004708) do

  create_table "bits", force: true do |t|
    t.string   "exercise"
    t.integer  "set"
    t.integer  "reps"
    t.string   "weight"
    t.string   "time"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fits", force: true do |t|
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "focus", force: true do |t|
    t.string   "date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lits", force: true do |t|
    t.string   "exercise"
    t.string   "set"
    t.string   "reps"
    t.string   "weight"
    t.string   "time"
    t.text     "notes"
    t.integer  "fit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lits", ["fit_id"], name: "index_lits_on_fit_id"

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

  create_table "productivities", force: true do |t|
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: true do |t|
    t.string   "mostimp"
    t.text     "notes"
    t.text     "why"
    t.text     "whynot"
    t.text     "time"
    t.text     "noted"
    t.text     "growth"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "things", ["day_id"], name: "index_things_on_day_id"

  create_table "tits", force: true do |t|
    t.string   "exercise"
    t.string   "set"
    t.string   "reps"
    t.string   "weight"
    t.string   "time"
    t.text     "notes"
    t.text     "growthrate"
    t.integer  "fit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tits", ["fit_id"], name: "index_tits_on_fit_id"

  create_table "workouts", force: true do |t|
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
