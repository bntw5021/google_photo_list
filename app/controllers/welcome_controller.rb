class WelcomeController < ApplicationController
  def index
    @albums = Album.all.order("id DESC")
    @histories = History.all
  end
end
