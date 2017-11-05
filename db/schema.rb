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

ActiveRecord::Schema.define(version: 20171105130742) do

  create_table "bids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "player_id"
    t.bigint "round_id"
    t.integer "bid_point"
    t.string "suit", limit: 10
    t.string "qualifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_bids_on_player_id"
    t.index ["round_id"], name: "index_bids_on_round_id"
  end

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "suit", limit: 10
    t.string "value", limit: 5
    t.integer "points"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "deck_id"
  end

  create_table "decks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_decks_on_match_id"
  end

  create_table "hands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "card_id"
    t.bigint "player_id"
    t.bigint "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_hands_on_card_id"
    t.index ["player_id"], name: "index_hands_on_player_id"
    t.index ["round_id"], name: "index_hands_on_round_id"
  end

  create_table "match_players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "team_id"
    t.bigint "player_id"
    t.bigint "match_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_players_on_match_id"
    t.index ["player_id"], name: "index_match_players_on_player_id"
    t.index ["team_id"], name: "index_match_players_on_team_id"
  end

  create_table "matches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "first_team_id"
    t.integer "first_team_points"
    t.integer "second_team_id"
    t.integer "second_team_points"
    t.integer "max_bid"
    t.integer "no_of_players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "sign_in_count", default: 0
  end

  create_table "plays", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "trick_id"
    t.bigint "player_id"
    t.bigint "card_id"
    t.integer "play_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_plays_on_card_id"
    t.index ["player_id"], name: "index_plays_on_player_id"
    t.index ["trick_id"], name: "index_plays_on_trick_id"
  end

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "match_id"
    t.integer "bidder_id"
    t.integer "final_bid"
    t.string "trump_suit", limit: 10
    t.integer "points_scored"
    t.integer "winner_id"
    t.integer "round_points"
    t.integer "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_rounds_on_match_id"
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tricks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "round_id"
    t.integer "first_player_id"
    t.integer "winner_id"
    t.boolean "is_cut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_tricks_on_round_id"
  end

end
