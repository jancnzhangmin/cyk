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

ActiveRecord::Schema.define(version: 20160707143013) do

  create_table "admins", force: :cascade do |t|
    t.string   "login",           limit: 255
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.string   "auth",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "creditdetails", force: :cascade do |t|
    t.float    "amount",                        limit: 24
    t.datetime "amountdate"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "iou_file_name",                 limit: 255
    t.string   "iou_content_type",              limit: 255
    t.integer  "iou_file_size",                 limit: 4
    t.datetime "iou_updated_at"
    t.string   "repaymentvoucher_file_name",    limit: 255
    t.string   "repaymentvoucher_content_type", limit: 255
    t.integer  "repaymentvoucher_file_size",    limit: 4
    t.datetime "repaymentvoucher_updated_at"
  end

  create_table "credits", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "sex",           limit: 4
    t.integer  "age",           limit: 4
    t.string   "placeoforigin", limit: 255
    t.string   "upname",        limit: 255
    t.string   "tel",           limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "memberlevels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.float    "quota",      limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "peos", force: :cascade do |t|
    t.integer  "memberlevel_id",             limit: 4
    t.string   "name",                       limit: 255
    t.float    "credit",                     limit: 24
    t.integer  "sex",                        limit: 4
    t.string   "tel",                        limit: 255
    t.string   "bankcard",                   limit: 255
    t.string   "bankaccount",                limit: 255
    t.string   "contact",                    limit: 255
    t.integer  "contactsex",                 limit: 4
    t.string   "contacttel",                 limit: 255
    t.string   "businesslicense",            limit: 255
    t.string   "qrcode",                     limit: 255
    t.integer  "upid",                       limit: 4
    t.integer  "status",                     limit: 4
    t.string   "wechat",                     limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "identityfont_file_name",     limit: 255
    t.string   "identityfont_content_type",  limit: 255
    t.integer  "identityfont_file_size",     limit: 4
    t.datetime "identityfont_updated_at"
    t.string   "identityback_file_name",     limit: 255
    t.string   "identityback_content_type",  limit: 255
    t.integer  "identityback_file_size",     limit: 4
    t.datetime "identityback_updated_at"
    t.string   "bankphoto_file_name",        limit: 255
    t.string   "bankphoto_content_type",     limit: 255
    t.integer  "bankphoto_file_size",        limit: 4
    t.datetime "bankphoto_updated_at"
    t.string   "businessphoto_file_name",    limit: 255
    t.string   "businessphoto_content_type", limit: 255
    t.integer  "businessphoto_file_size",    limit: 4
    t.datetime "businessphoto_updated_at"
    t.string   "prospectus_file_name",       limit: 255
    t.string   "prospectus_content_type",    limit: 255
    t.integer  "prospectus_file_size",       limit: 4
    t.datetime "prospectus_updated_at"
    t.string   "workprove_file_name",        limit: 255
    t.string   "workprove_content_type",     limit: 255
    t.integer  "workprove_file_size",        limit: 4
    t.datetime "workprove_updated_at"
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "link",                limit: 255
    t.datetime "showstartdate"
    t.datetime "showenddate"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "slider_file_name",    limit: 255
    t.string   "slider_content_type", limit: 255
    t.integer  "slider_file_size",    limit: 4
    t.datetime "slider_updated_at"
  end

  create_table "stagelevels", force: :cascade do |t|
    t.string   "order",      limit: 255
    t.float    "ammount",    limit: 24
    t.float    "rate",       limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer  "stagelevel_id", limit: 4
    t.datetime "stagedate"
    t.float    "amount",        limit: 24
    t.integer  "status",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
