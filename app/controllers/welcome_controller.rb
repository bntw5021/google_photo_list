class WelcomeController < ApplicationController
  def index
    @albums = Album.all
    @histories = History.all
  end
end
