class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  # GET /albums

  def index
    @albums = Album.all
  end

  # GET /albums/1

  def show
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums

  def create
    @album = Album.new(album_params)


  end

  # PATCH/PUT /albums/1

  def update

  end

  # DELETE /albums/1

  def destroy

  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :year, :live)
    end
end
