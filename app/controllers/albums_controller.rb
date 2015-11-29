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
end
