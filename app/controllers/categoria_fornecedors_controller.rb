class CategoriaFornecedorsController < ApplicationController
  before_action :set_categoria_fornecedor, only: [:show, :edit, :update, :destroy]

  # GET /categoria_fornecedors
  # GET /categoria_fornecedors.json
  def index
    @categoria_fornecedors = CategoriaFornecedor.all
  end

  # GET /categoria_fornecedors/1
  # GET /categoria_fornecedors/1.json
  def show
  end

  # GET /categoria_fornecedors/new
  def new
    @categoria_fornecedor = CategoriaFornecedor.new
  end

  # GET /categoria_fornecedors/1/edit
  def edit
  end

  # POST /categoria_fornecedors
  # POST /categoria_fornecedors.json
  def create
    @categoria_fornecedor = CategoriaFornecedor.new(categoria_fornecedor_params)

    respond_to do |format|
      if @categoria_fornecedor.save
        format.html { redirect_to @categoria_fornecedor, notice: 'Categoria fornecedor was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_fornecedor }
      else
        format.html { render :new }
        format.json { render json: @categoria_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_fornecedors/1
  # PATCH/PUT /categoria_fornecedors/1.json
  def update
    respond_to do |format|
      if @categoria_fornecedor.update(categoria_fornecedor_params)
        format.html { redirect_to @categoria_fornecedor, notice: 'Categoria fornecedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_fornecedor }
      else
        format.html { render :edit }
        format.json { render json: @categoria_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_fornecedors/1
  # DELETE /categoria_fornecedors/1.json
  def destroy
    @categoria_fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to categoria_fornecedors_url, notice: 'Categoria fornecedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_fornecedor
      @categoria_fornecedor = CategoriaFornecedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_fornecedor_params
      params.require(:categoria_fornecedor).permit(:tipo, :obs)
    end
end
