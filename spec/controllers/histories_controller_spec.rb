require 'rails_helper'

RSpec.describe HistoriesController, type: :controller do
  describe "#index" do
    it "assigns @histories" do
      get :index
      expect(assigns(:histories)).to_not be_nil
    end
  end

  describe "#new" do
    it "assigns @history" do
      get :new
      expect(assigns(:history)).to_not be_nil
    end
  end

  describe "#create" do
    let(:album) { Album.create(title: "title", album_url: "album_url", cover_url: "cover_url", count: 0) }

    it "create new history" do
      expect {
        post :create, history: { update_date: Date.today, count: 0, album_id: album.id }
      }.to change {
        History.count
      }.from(0).to(1)
    end
  end
end
