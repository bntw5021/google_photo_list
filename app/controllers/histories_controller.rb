class HistoriesController < ApplicationController
  def index
    @histories = History.all
  end

  def new
    @history = History.new
  end

  def create
    History.create(params.require(:history).permit(:update_date, :count, :album_id))
    redirect_to action: :index
  end
end
