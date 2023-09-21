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

ActiveRecord::Schema[7.0].define(version: 2022_12_10_225358) do
  create_table "presentation_scores", force: :cascade do |t|
    t.integer "grade"
    t.string "comment"
    t.integer "q1", null: false
    t.integer "q2", null: false
    t.integer "q3", null: false
    t.integer "q4", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "presentation_id"
    t.integer "student_id"
    t.index ["presentation_id"], name: "index_presentation_scores_on_presentation_id"
    t.index ["student_id"], name: "index_presentation_scores_on_student_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_presentations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "presentation_id"
    t.index ["presentation_id"], name: "index_student_presentations_on_presentation_id"
    t.index ["student_id"], name: "index_student_presentations_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "presentation_scores", "presentations"
  add_foreign_key "student_presentations", "presentations"
  add_foreign_key "student_presentations", "students"
end
