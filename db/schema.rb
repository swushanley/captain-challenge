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

ActiveRecord::Schema.define(version: 20171110102104) do

  create_table "games", force: :cascade do |t|
    t.string "player_1"
    t.string "player_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_players", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "health", default: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "user_player", default: true
    t.integer "strength", default: 100
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
