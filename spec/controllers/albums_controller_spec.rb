require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  describe "#index" do
    it "assigns @albums" do
      get :index
      expect(assigns(:albums)).to_not be_nil
    end
  end

  describe "#new" do
    it "assigns @album" do
      get :new
      expect(assigns(:album)).to_not be_nil
    end
  end

  describe "#create" do
    it "create new album" do
      expect {
        post :create, album: { title: "test", album_url: "http://example.com/album/", cover_url: "http://example.com/cover/", count: 0}
      }.to change {
        Album.count
      }.from(0).to(1)
    end
  end
end
