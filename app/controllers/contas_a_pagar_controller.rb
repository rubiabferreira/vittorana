class ContasAPagarController < ApplicationController
  before_action :set_conta_a_pagar, only: [:show, :edit, :update, :destroy]

  # GET /contas_a_pagar
  # GET /contas_a_pagar.json
  def index
    @contas_a_pagar = ContaAPagar.all
  end

  # GET /contas_a_pagar/1
  # GET /contas_a_pagar/1.json
  def show
  end

  # GET /contas_a_pagar/new
  def new
    @conta_a_pagar = ContaAPagar.new
  end

  # GET /contas_a_pagar/1/edit
  def edit
  end

  # POST /contas_a_pagar
  # POST /contas_a_pagar.json
  def create
    @conta_a_pagar = ContaAPagar.new(conta_a_pagar_params)

    respond_to do |format|
      if @conta_a_pagar.save
        format.html { redirect_to @conta_a_pagar, notice: 'Conta a pagar was successfully created.' }
        format.json { render :show, status: :created, location: @conta_a_pagar }
      else
        format.html { render :new }
        format.json { render json: @conta_a_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_a_pagar/1
  # PATCH/PUT /contas_a_pagar/1.json
  def update
    respond_to do |format|
      if @conta_a_pagar.update(conta_a_pagar_params)
        format.html { redirect_to @conta_a_pagar, notice: 'Conta a pagar was successfully updated.' }
        format.json { render :show, status: :ok, location: @conta_a_pagar }
      else
        format.html { render :edit }
        format.json { render json: @conta_a_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_a_pagar/1
  # DELETE /contas_a_pagar/1.json
  def destroy
    @conta_a_pagar.destroy
    respond_to do |format|
      format.html { redirect_to contas_a_pagar_url, notice: 'Conta a pagar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta_a_pagar
      @conta_a_pagar = ContaAPagar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conta_a_pagar_params
      params.require(:conta_a_pagar).permit(:fornecedor_id, :vencimento, :valor)
    end
end
