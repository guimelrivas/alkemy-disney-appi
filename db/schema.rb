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

ActiveRecord::Schema[7.0].define(version: 2022_08_27_150132) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.text "story"
    t.string "img_url"
    t.integer "movies_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movies_id"], name: "index_characters_on_movies_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.integer "movie_id", null: false
    t.string "img_url"
    t.integer "movies_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_genres_on_movie_id"
    t.index ["movies_id"], name: "index_genres_on_movies_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.date "creation_date"
    t.integer "rate"
    t.integer "character_id", null: false
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_movies_on_character_id"
  end

  add_foreign_key "characters", "movies", column: "movies_id"
  add_foreign_key "genres", "movies"
  add_foreign_key "genres", "movies", column: "movies_id"
  add_foreign_key "movies", "characters"
end
