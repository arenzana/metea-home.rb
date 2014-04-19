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

ActiveRecord::Schema.define(version: 20140419140959) do

  create_table "current_weather", primary_key: "key_id", force: true do |t|
    t.integer "ssboe",             limit: 8,  null: false
    t.integer "location_id",       limit: 8,  null: false
    t.string  "wind_direction",    limit: 45
    t.float   "wind_speed_kmh"
    t.float   "wind_speed_mph"
    t.string  "relative_humidity", limit: 5
    t.integer "preassure_mb"
    t.float   "preassure_in"
    t.integer "uv"
    t.string  "precipitation",     limit: 50
    t.float   "temp_f"
    t.float   "temp_c"
    t.string  "timezone",          limit: 45
    t.string  "timezone_long",     limit: 45
  end

  add_index "current_weather", ["key_id"], name: "key_id_UNIQUE", unique: true, using: :btree
  add_index "current_weather", ["location_id"], name: "location_id_idx", using: :btree
  add_index "current_weather", ["ssboe"], name: "ssboe_idx", using: :btree

  create_table "current_weather_view", id: false, force: true do |t|
    t.string   "Location",              limit: 45
    t.datetime "TimeInServer"
    t.datetime "TimeInDestination"
    t.string   "TimeZone",              limit: 45
    t.integer  "SSBOE",                 limit: 8,              null: false
    t.integer  "KeyID",                 limit: 8,  default: 0, null: false
    t.string   "WindDirection",         limit: 45
    t.float    "WindSpeedKh"
    t.float    "WindSpeedMph"
    t.string   "RelativeHumidity",      limit: 5
    t.integer  "BarometricPreassureMb"
    t.integer  "BarometricPreassureIn"
    t.string   "Precipitation",         limit: 50
    t.integer  "UV"
    t.float    "TemperatureC"
    t.float    "TemperatureF"
  end

  create_table "current_weather_view_50", id: false, force: true do |t|
    t.string   "Location",              limit: 45
    t.datetime "TimeInServer"
    t.datetime "TimeInDestination"
    t.string   "TimeZone",              limit: 45
    t.integer  "SSBOE",                 limit: 8,              null: false
    t.integer  "KeyID",                 limit: 8,  default: 0, null: false
    t.string   "WindDirection",         limit: 45
    t.float    "WindSpeedKh"
    t.float    "WindSpeedMph"
    t.string   "RelativeHumidity",      limit: 5
    t.integer  "BarometricPreassureMb"
    t.integer  "BarometricPreassureIn"
    t.string   "Precipitation",         limit: 50
    t.integer  "UV"
    t.float    "TemperatureC"
    t.float    "TemperatureF"
  end

  create_table "current_weather_view_50_FWA", id: false, force: true do |t|
    t.string   "Location",             limit: 45
    t.datetime "TimeInServer"
    t.datetime "TimeInDestination"
    t.string   "TimeZone",             limit: 45
    t.integer  "SSBOE",                limit: 8,  null: false
    t.string   "WindDirection",        limit: 45
    t.float    "WindSpeedKh"
    t.float    "WindSpeedMph"
    t.string   "RelativeHumidity",     limit: 5
    t.integer  "BarometricPressureMb"
    t.integer  "BarometricPressureIn"
    t.string   "Precipitation",        limit: 50
    t.integer  "UV"
    t.float    "TemperatureC"
    t.float    "TemperatureF"
    t.float    "HouseTemperatureC",               null: false
    t.float    "HouseTemperaturef",               null: false
  end

  create_table "current_weather_view_FWA", id: false, force: true do |t|
    t.string   "Location",             limit: 45
    t.datetime "TimeInServer"
    t.datetime "TimeInDestination"
    t.string   "TimeZone",             limit: 45
    t.integer  "SSBOE",                limit: 8,              null: false
    t.string   "WindDirection",        limit: 45
    t.float    "WindSpeedKh"
    t.float    "WindSpeedMph"
    t.string   "RelativeHumidity",     limit: 5
    t.integer  "BarometricPressureMb"
    t.integer  "BarometricPressureIn"
    t.string   "Precipitation",        limit: 50
    t.integer  "UV"
    t.float    "TemperatureC"
    t.float    "TemperatureF"
    t.float    "HouseTemperatureC",                           null: false
    t.float    "HouseTemperaturef",                           null: false
    t.integer  "KeyID",                limit: 8,  default: 0, null: false
  end

  create_table "house_temperature", primary_key: "key_id", force: true do |t|
    t.float     "temperature_c",           null: false
    t.float     "temperature_f",           null: false
    t.integer   "ssboe",         limit: 8, null: false
    t.timestamp "timestamp",               null: false
  end

  add_index "house_temperature", ["key_id"], name: "key_id_UNIQUE", unique: true, using: :btree
  add_index "house_temperature", ["ssboe"], name: "time_UNIQUE", unique: true, using: :btree

  create_table "location", id: false, force: true do |t|
    t.integer "key_id",    limit: 8,  null: false
    t.string  "name",      limit: 45, null: false
    t.float   "latitude"
    t.float   "longitude"
    t.string  "country",   limit: 45
  end

  add_index "location", ["key_id"], name: "key_id_UNIQUE", unique: true, using: :btree
  add_index "location", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "stock_briefing", primary_key: "key_id", force: true do |t|
    t.string  "symbol_id",        limit: 4,  null: false
    t.float   "days_low"
    t.float   "days_high"
    t.float   "last_trade_price"
    t.integer "volume",           limit: 8
    t.integer "avg_daily_volume", limit: 8
    t.string  "market_cap",       limit: 45
    t.integer "ssboe",            limit: 8,  null: false
  end

  add_index "stock_briefing", ["ssboe"], name: "ssboe_idx", using: :btree
  add_index "stock_briefing", ["symbol_id"], name: "symbol_id_idx", using: :btree

  create_table "stock_names", id: false, force: true do |t|
    t.integer "key_id",               null: false
    t.string  "symbol_id", limit: 4,  null: false
    t.string  "name",      limit: 45, null: false
    t.string  "exchange",  limit: 45, null: false
  end

  add_index "stock_names", ["key_id"], name: "key_id_UNIQUE", unique: true, using: :btree
  add_index "stock_names", ["symbol_id"], name: "symbol_id", using: :btree
  add_index "stock_names", ["symbol_id"], name: "symbol_id_UNIQUE", unique: true, using: :btree

  create_table "stock_view", id: false, force: true do |t|
    t.string   "Symbol",             limit: 4,  null: false
    t.float    "Low"
    t.float    "High"
    t.float    "Last"
    t.integer  "Volume",             limit: 8
    t.integer  "AverageDailyVolume", limit: 8
    t.string   "marketCap",          limit: 45
    t.string   "StockName",          limit: 45, null: false
    t.string   "Exchange",           limit: 45, null: false
    t.datetime "TimeInServer"
  end

end
