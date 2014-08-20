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

ActiveRecord::Schema.define(version: 20140820111247) do

  create_table "answers", force: true do |t|
    t.integer  "quiz_id"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "success"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["quiz_id"], name: "index_answers_on_quiz_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "question_quiz_relations", force: true do |t|
    t.integer  "question_id"
    t.integer  "quiz_id"
    t.integer  "show_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_quiz_relations", ["question_id"], name: "index_question_quiz_relations_on_question_id"
  add_index "question_quiz_relations", ["quiz_id"], name: "index_question_quiz_relations_on_quiz_id"

  create_table "questions", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "content"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["user_id"], name: "index_quizzes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
