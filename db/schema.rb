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

ActiveRecord::Schema.define(version: 20161018024959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atividades", force: :cascade do |t|
    t.string   "atividade"
    t.string   "situacao"
    t.string   "projeto"
    t.integer  "projetoid"
    t.string   "atucao"
    t.decimal  "custo"
    t.date     "datainicio"
    t.date     "datefim"
    t.decimal  "cargahoras"
    t.integer  "responsavelid"
    t.string   "responsavelnome"
    t.text     "decricao"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

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

  create_table "ongs", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "uf"
    t.string   "cidade"
    t.string   "telefone"
    t.string   "email"
    t.string   "site"
    t.string   "cnpj"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.integer  "ProjetoID"
    t.string   "Status"
    t.string   "Projeto"
    t.string   "Tipo"
    t.string   "Area"
    t.date     "DataInicio"
    t.date     "DataFim"
    t.integer  "OngNumero"
    t.integer  "Ong"
    t.integer  "RespNumero"
    t.string   "RespNome"
    t.string   "DescricaoProjeto"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",           limit: 254
    t.string   "nome",            limit: 254
    t.string   "endereco",        limit: 300
    t.string   "telefone",        limit: 30
    t.string   "estado",          limit: 2
    t.string   "cidade",          limit: 200
    t.boolean  "ocultar"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_usuarios_on_email", using: :btree
  end

end
