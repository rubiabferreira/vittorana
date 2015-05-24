class EstadosController < ApplicationController
  def cidades
    @cidades = Estado.find_by(id: params[:id]).cidades
  end
end
