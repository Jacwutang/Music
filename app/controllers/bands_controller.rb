class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]

  # GET /bands
  
  def index
    @bands = Band.all
  end

  # GET /bands/1

  def show
  end

  # GET /bands/new
  def new
    @band = Band.new
  end


  # GET /bands/1/edit
  def edit
  end

  # POST /bands

  def create
    @band = Band.new(band_params)


  end

  # PATCH/PUT /bands/1

  def update

  end

  # DELETE /bands/1

  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:name)
    end
end
