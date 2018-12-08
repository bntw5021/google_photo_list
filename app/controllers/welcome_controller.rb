class WelcomeController < ApplicationController
  def index
    @albums = Album.order(id: :desc)
  end
end
