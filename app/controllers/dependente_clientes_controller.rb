class DependenteClientesController < ApplicationController
  before_action :set_dependente_cliente, only: [:show, :edit, :update, :destroy]

  # GET /dependente_clientes
  # GET /dependente_clientes.json
  def index
    @dependente_clientes = DependenteCliente.all
  end

  # GET /dependente_clientes/1
  # GET /dependente_clientes/1.json
  def show
  end

  # GET /dependente_clientes/new
  def new
    @dependente_cliente = DependenteCliente.new
  end

  # GET /dependente_clientes/1/edit
  def edit
  end

  # POST /dependente_clientes
  # POST /dependente_clientes.json
  def create
    @dependente_cliente = DependenteCliente.new(dependente_cliente_params)

    respond_to do |format|
      if @dependente_cliente.save
        format.html { redirect_to @dependente_cliente, notice: 'Dependente cliente was successfully created.' }
        format.json { render :show, status: :created, location: @dependente_cliente }
      else
        format.html { render :new }
        format.json { render json: @dependente_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependente_clientes/1
  # PATCH/PUT /dependente_clientes/1.json
  def update
    respond_to do |format|
      if @dependente_cliente.update(dependente_cliente_params)
        format.html { redirect_to @dependente_cliente, notice: 'Dependente cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependente_cliente }
      else
        format.html { render :edit }
        format.json { render json: @dependente_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependente_clientes/1
  # DELETE /dependente_clientes/1.json
  def destroy
    @dependente_cliente.destroy
    respond_to do |format|
      format.html { redirect_to dependente_clientes_url, notice: 'Dependente cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependente_cliente
      @dependente_cliente = DependenteCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependente_cliente_params
      params.require(:dependente_cliente).permit(:nome, :datanascimento)
    end
end
