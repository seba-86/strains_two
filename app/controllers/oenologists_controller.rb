class OenologistsController < ApplicationController
  before_action :set_oenologist, only: [:show, :edit, :update, :destroy]

  # GET /oenologists
  def index
    @oenologists = Oenologist.all
  end

  # GET /oenologists/1
  def show
  end

  # GET /oenologists/new
  def new
    @oenologist = Oenologist.new
  end

  # GET /oenologists/1/edit
  def edit
  end

  # POST /oenologists
  def create
    @oenologist = Oenologist.new(oenologist_params)

    if @oenologist.save
      redirect_to @oenologist, notice: 'Oenologist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /oenologists/1
  def update
    if @oenologist.update(oenologist_params)
      redirect_to @oenologist, notice: 'Oenologist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /oenologists/1
  def destroy
    @oenologist.destroy
    redirect_to oenologists_url, notice: 'Oenologist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist
      @oenologist = Oenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_params
      params.require(:oenologist).permit(:name, :age, :country, :writer, :viewer, :editor)
    end
end
