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

ActiveRecord::Schema.define(version: 2021_11_13_132434) do

  create_table "customerdata", force: :cascade do |t|
    t.string "playername"
    t.float "betamount"
    t.string "paymenttype"
    t.float "multiplier"
    t.string "gametype"
    t.integer "commission"
    t.float "currencyconvert"
    t.boolean "outcome"
    t.float "netincome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gameinstances", force: :cascade do |t|
    t.integer "sessionid"
    t.string "playername"
    t.float "betamount"
    t.string "gametype"
    t.integer "multiplier"
    t.integer "commission"
    t.string "paymentname"
    t.float "currentprice"
    t.boolean "crypto"
    t.float "cryptoprice"
    t.boolean "outcome"
    t.float "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gametypes", force: :cascade do |t|
    t.string "gametype"
    t.integer "multiplier"
    t.integer "commission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homepages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paymenttypes", force: :cascade do |t|
    t.string "paymentname"
    t.float "currentprice"
    t.boolean "crypto"
    t.string "cryptourl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "sessionid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
