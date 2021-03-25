class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  # GET /wines
  def index
    @wines = Wine.asc.includes(:strains)
  
  end

  # GET /wines/1
  def show
  end

  # GET /wines/new
  
  def new
    @wine = Wine.new
    @strains = Strain.where(available: true) 
  end

  # GET /wines/1/edit
  def edit
   
  end

  # POST /wines
  def create
    @wine = Wine.new(wine_params)

    if @wine.save
      redirect_to root_path, notice: 'Wine was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wines/1
  def update
    if @wine.update(wine_params)
      redirect_to @wine, notice: 'Wine was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wines/1
  def destroy
    @wine.destroy
    redirect_to wines_url, notice: 'Wine was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine
      @wine = Wine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wine_params
      params.require(:wine).permit(:name, strain_ids:[], oenologist_ids:[], 
        assemblies_attributes: [:id, :strain_id, :wine_id, :percentage, :_destroy], 
        evaluations_attributes: [:id, :note_oenologist, :wine_id, :oenologist_id, :_destroy])
    end
end
