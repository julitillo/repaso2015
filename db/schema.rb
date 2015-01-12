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

ActiveRecord::Schema.define(version: 20150110165744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aceptions", force: true do |t|
    t.integer  "sequencial"
    t.string   "name"
    t.text     "description"
    t.integer  "word_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aceptions", ["word_id"], name: "index_aceptions_on_word_id", using: :btree

  create_table "answers", force: true do |t|
    t.integer  "translation_id"
    t.string   "ans"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["translation_id"], name: "index_answers_on_translation_id", using: :btree

  create_table "dictionaries", force: true do |t|
    t.string   "title"
    t.integer  "difficulty"
    t.integer  "access"
    t.integer  "user_id"
    t.integer  "language_own_id"
    t.integer  "language_for_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dictionaries", ["language_for_id"], name: "index_dictionaries_on_language_for_id", using: :btree
  add_index "dictionaries", ["language_own_id"], name: "index_dictionaries_on_language_own_id", using: :btree
  add_index "dictionaries", ["user_id"], name: "index_dictionaries_on_user_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.integer  "version_id"
    t.integer  "translation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["translation_id"], name: "index_lists_on_translation_id", using: :btree
  add_index "lists", ["version_id"], name: "index_lists_on_version_id", using: :btree

  create_table "respuesta", force: true do |t|
    t.integer  "translation_id"
    t.string   "resp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "respuesta", ["translation_id"], name: "index_respuesta_on_translation_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "version_id"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "repetitions"
  end

  add_index "tests", ["user_id"], name: "index_tests_on_user_id", using: :btree
  add_index "tests", ["version_id"], name: "index_tests_on_version_id", using: :btree

  create_table "translations", force: true do |t|
    t.integer  "aception_own_id"
    t.integer  "aception_for_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations", ["aception_for_id"], name: "index_translations_on_aception_for_id", using: :btree
  add_index "translations", ["aception_own_id"], name: "index_translations_on_aception_own_id", using: :btree

  create_table "translations_versions", force: true do |t|
    t.integer  "version_id"
    t.integer  "translation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations_versions", ["translation_id"], name: "index_translations_versions_on_translation_id", using: :btree
  add_index "translations_versions", ["version_id"], name: "index_translations_versions_on_version_id", using: :btree

  create_table "translations_versions_tests", force: true do |t|
    t.integer  "translations_versions_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations_versions_tests", ["test_id"], name: "index_translations_versions_tests_on_test_id", using: :btree
  add_index "translations_versions_tests", ["translations_versions_id"], name: "index_translations_versions_tests_on_translations_versions_id", using: :btree

  create_table "urls", force: true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "user"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.integer  "number"
    t.integer  "status"
    t.integer  "dictionary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["dictionary_id"], name: "index_versions_on_dictionary_id", using: :btree

  create_table "words", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["language_id"], name: "index_words_on_language_id", using: :btree

end
