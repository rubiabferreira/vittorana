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

ActiveRecord::Schema.define(version: 20150328185323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cidades", force: true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cidades", ["estado_id"], name: "index_cidades_on_estado_id", using: :btree

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "conjuge"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "estado"
    t.string   "cidade"
    t.string   "tresidencial"
    t.string   "tcelular"
    t.string   "cpf"
    t.string   "rg"
    t.boolean  "evento"
    t.time     "horarioFesta"
    t.time     "duracaoFesta"
    t.integer  "diaSemana"
    t.boolean  "cortesia"
    t.float    "valorConsumacao"
    t.integer  "ItensAvulsos"
    t.date     "dataEvento"
    t.integer  "qtdeCriancas"
    t.integer  "qtdeAdultos"
    t.integer  "tema"
    t.boolean  "gerarContrato"
    t.float    "valor"
    t.string   "nDocumento"
    t.float    "desconto"
    t.float    "entrada"
    t.string   "formaPagamento"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.integer  "capital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estados", ["capital_id"], name: "index_estados_on_capital_id", using: :btree

end
