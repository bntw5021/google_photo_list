class AlbumsController < ApplicationController
  def index
    @albums = Album.order(id: :desc)
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.save!
    redirect_to action: :index
  rescue => e
    render :new
  end

  def destroy
    Album.find(params[:id]).destroy!
    redirect_to action: :index
  rescue => e
    render :index
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :album_url, :cover_url, :count)
  end
end
