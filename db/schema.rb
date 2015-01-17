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

ActiveRecord::Schema.define(version: 20150117112900) do

  create_table "actors", force: true do |t|
    t.integer  "movie_id"
    t.string   "name"
    t.string   "gender",       limit: 1
    t.date     "dob"
    t.integer  "no_of_movies"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actors", ["movie_id"], name: "index_actors_on_movie_id", using: :btree

  create_table "actors_movies", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  add_index "actors_movies", ["movie_id", "actor_id"], name: "index_actors_movies_on_movie_id_and_actor_id", using: :btree

  create_table "movies", force: true do |t|
    t.string   "name"
    t.date     "release_date"
    t.integer  "rating",       limit: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trailers", force: true do |t|
    t.integer  "movie_id"
    t.string   "video_url"
    t.integer  "views"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
