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

ActiveRecord::Schema.define(version: 20170326113200) do

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "emailntd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nguoitimviecs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "daungtuyen"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_nguoitimviecs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_nguoitimviecs_on_reset_password_token", unique: true
  end

  create_table "nhatuyendungs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "tencongty"
    t.text     "motacongty"
    t.string   "diadiem"
    t.string   "quymo"
    t.string   "trangweb"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_nhatuyendungs_on_confirmation_token", unique: true
    t.index ["email"], name: "index_nhatuyendungs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_nhatuyendungs_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_nhatuyendungs_on_unlock_token", unique: true
  end

  create_table "thumails", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ungtuyens", force: :cascade do |t|
    t.string   "hoso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vieclams", force: :cascade do |t|
    t.string   "tencv"
    t.string   "congty"
    t.string   "nghanhnghe"
    t.string   "vitri"
    t.text     "mota"
    t.text     "yeucau"
    t.string   "mucluong"
    t.text     "quyenloi"
    t.string   "diadiem"
    t.date     "ngaydangtuyen"
    t.date     "ngayhethan"
    t.string   "email"
    t.string   "nophoso"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "daungtuyen"
    t.string   "idnhatuyendung"
    t.text     "motacongty"
    t.string   "trangweb"
    t.string   "slug"
    t.string   "tencvurl"
    t.string   "diadiemurl"
    t.string   "tencongtyurl"
    t.string   "kichhoat"
    t.string   "nghanhngheurl"
    t.string   "tencvtk"
    t.string   "tencvtkn"
    t.index ["slug"], name: "index_vieclams_on_slug", unique: true
  end

end
