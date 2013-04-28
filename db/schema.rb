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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130426124909) do

  create_table "game_ratings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "game_review_id"
    t.integer  "rating"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "game_reviews", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "game_rating_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.string   "poster"
    t.string   "background"
    t.text     "description"
    t.string   "steam_id"
    t.integer  "game_ratings_id"
    t.integer  "game_reviews_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "games_genres", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "genre_id"
  end

  add_index "games_genres", ["game_id", "genre_id"], :name => "index_games_genres_on_game_id_and_genre_id"

  create_table "games_users", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "user_id"
  end

  add_index "games_users", ["game_id", "user_id"], :name => "index_games_users_on_game_id_and_user_id"

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "display_name"
    t.text     "description"
    t.string   "avatar"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "sex"
    t.string   "password_salt"
    t.string   "password_hash"
    t.integer  "profile_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
