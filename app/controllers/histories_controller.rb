class HistoriesController < ApplicationController
  def index
    @histories = History.order(id: :desc)
  end

  def new
    @history = History.new
  end

  def create
    @history = History.new(history_params)
    @history.save!
    redirect_to action: :index
  rescue => e
    render :new
  end

  def destroy
    History.find(params[:id]).destroy!
    redirect_to action: :index
  rescue
    render :index
  end

  def edit
    @history = History.find(params[:id])
  end

  def update
    @history = History.find(params[:id])
    if @history.update(history_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def history_params
    params.require(:history).permit(:update_date, :count, :album_id)
  end
end
