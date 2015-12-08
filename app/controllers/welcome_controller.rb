class WelcomeController < ApplicationController
  def index
    @albums = Album.all.order("id DESC")
    @histories = History.all.order("id DESC")
  end
end
