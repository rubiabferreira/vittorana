class RemoveEventDataToCliente < ActiveRecord::Migration
  def change
    remove_column :clientes,  :evento
    remove_column :clientes,  :horario_festa
    remove_column :clientes,  :duracao_festa
    remove_column :clientes,  :dia_semana
    remove_column :clientes,  :cortesia
    remove_column :clientes,  :valor_consumacao
    remove_column :clientes,  :itens_avulsos
    remove_column :clientes,  :data_evento
    remove_column :clientes,  :qtde_criancas
    remove_column :clientes,  :qtde_adultos
    remove_column :clientes,  :tema
    remove_column :clientes,  :gerar_contrato
    remove_column :clientes,  :valor
    remove_column :clientes,  :num_documento
    remove_column :clientes,  :desconto
    remove_column :clientes,  :entrada
    remove_column :clientes,  :forma_pagamento
    remove_column :clientes,  :obs
  end
end
