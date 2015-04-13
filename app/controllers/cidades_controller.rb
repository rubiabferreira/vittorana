class CidadesController < ApplicationController
  def index
    @cidades = Estado.find(params[:id]).cidades
    respond_to do |format|
      format.json  { render :json => @cidades }
    end
  end

end