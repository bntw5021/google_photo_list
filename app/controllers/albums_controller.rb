class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    Album.create(params.require(:album).permit(:title, :album_url, :cover_url, :count))
    redirect_to action: :index
  end

  def destroy
    Album.find(params[:id]).destroy
    redirect_to action: :index
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:title, :album_url, :cover_url, :count))
      redirect_to action: :index
    end
  end
end
