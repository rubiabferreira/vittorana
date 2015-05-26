class ContasAReceberController < ApplicationController
  before_action :set_conta_a_receber, only: [:show, :edit, :update, :destroy]

  # GET /contas_a_receber
  # GET /contas_a_receber.json
  def index
    @contas_a_receber = ContaAReceber.all
  end

  # GET /contas_a_receber/1
  # GET /contas_a_receber/1.json
  def show
  end

  # GET /contas_a_receber/new
  def new
    @conta_a_receber = ContaAReceber.new
  end

  # GET /contas_a_receber/1/edit
  def edit
  end

  # POST /contas_a_receber
  # POST /contas_a_receber.json
  def create
    @conta_a_receber = ContaAReceber.new(conta_a_receber_params)

    respond_to do |format|
      if @conta_a_receber.save
        format.html { redirect_to @conta_a_receber, notice: 'Conta a receber was successfully created.' }
        format.json { render :show, status: :created, location: @conta_a_receber }
      else
        format.html { render :new }
        format.json { render json: @conta_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_a_receber/1
  # PATCH/PUT /contas_a_receber/1.json
  def update
    respond_to do |format|
      if @conta_a_receber.update(conta_a_receber_params)
        format.html { redirect_to @conta_a_receber, notice: 'Conta a receber was successfully updated.' }
        format.json { render :show, status: :ok, location: @conta_a_receber }
      else
        format.html { render :edit }
        format.json { render json: @conta_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_a_receber/1
  # DELETE /contas_a_receber/1.json
  def destroy
    @conta_a_receber.destroy
    respond_to do |format|
      format.html { redirect_to contas_a_receber_url, notice: 'Conta a receber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta_a_receber
      @conta_a_receber = ContaAReceber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conta_a_receber_params
      params.require(:conta_a_receber).permit(:cliente_id, :vencimento, :valor)
    end
end
