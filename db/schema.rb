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

ActiveRecord::Schema.define(version: 20150203114029) do

  create_table "actors", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "gender",       limit: 1
    t.date     "dob"
    t.integer  "no_of_movies", limit: 4
    t.integer  "age",          limit: 4,     null: false
    t.text     "about",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", limit: 4
    t.integer "actor_id", limit: 4
  end

  add_index "actors_movies", ["movie_id", "actor_id"], name: "index_actors_movies_on_movie_id_and_actor_id", using: :btree

  create_table "albums", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "movie_id",   limit: 4
    t.integer  "photo_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   limit: 4,     default: 0, null: false
    t.integer  "attempts",   limit: 4,     default: 0, null: false
    t.text     "handler",    limit: 65535,             null: false
    t.text     "last_error", limit: 65535
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.date     "release_date"
    t.integer  "rating",       limit: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "path",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type", using: :btree
  add_index "pictures", ["imageable_id"], name: "index_pictures_on_imageable_id", using: :btree

  create_table "publics", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trailers", force: :cascade do |t|
    t.integer  "movie_id",   limit: 4
    t.string   "video_url",  limit: 255
    t.integer  "views",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",         limit: 255
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
