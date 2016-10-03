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

ActiveRecord::Schema.define(version: 20160930150213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beneficiaries", force: :cascade do |t|
    t.string   "projeto"
    t.string   "nome"
    t.date     "dataNasc"
    t.string   "estadoCivil"
    t.string   "rg"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "estado"
    t.string   "pais"
    t.string   "cep"
    t.boolean  "menor"
    t.string   "responsavel"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "beneficiarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doadors", force: :cascade do |t|
    t.string   "nome"
    t.text     "endereco"
    t.integer  "telefone"
    t.string   "frequencia"
    t.string   "forma"
    t.date     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",      limit: 254
    t.string   "nome",       limit: 254
    t.string   "endereco",   limit: 300
    t.string   "telefone",   limit: 30
    t.string   "estado",     limit: 2
    t.string   "cidade",     limit: 200
    t.boolean  "ocultar"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "senha"
    t.index ["email"], name: "index_usuarios_on_email", using: :btree
  end

end
