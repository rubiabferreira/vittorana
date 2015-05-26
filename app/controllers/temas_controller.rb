class TemasController < ApplicationController
  before_action :set_tema, only: [:show, :edit, :update, :destroy]

  # GET /temas
  # GET /temas.json
  def index
    @temas = Tema.all
  end

  # GET /temas/1
  # GET /temas/1.json
  def show
  end

  # GET /temas/new
  def new
    @tema = Tema.new
  end

  # GET /temas/1/edit
  def edit
  end

  # POST /temas
  # POST /temas.json
  def create
    @tema = Tema.new(tema_params)

    respond_to do |format|
      if @tema.save
        format.html { redirect_to @tema, notice: 'Tema was successfully created.' }
        format.json { render :show, status: :created, location: @tema }
      else
        format.html { render :new }
        format.json { render json: @tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temas/1
  # PATCH/PUT /temas/1.json
  def update
    respond_to do |format|
      if @tema.update(tema_params)
        format.html { redirect_to @tema, notice: 'Tema was successfully updated.' }
        format.json { render :show, status: :ok, location: @tema }
      else
        format.html { render :edit }
        format.json { render json: @tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temas/1
  # DELETE /temas/1.json
  def destroy
    @tema.destroy
    respond_to do |format|
      format.html { redirect_to temas_url, notice: 'Tema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tema
      @tema = Tema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tema_params
      params.require(:tema).permit(:nome, :obs)
    end
end
