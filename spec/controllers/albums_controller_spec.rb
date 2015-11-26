require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  describe "#index" do
    it "assigns @albums" do
      get :index
      expect(assigns(:albums)).to_not be_nil
    end
  end
end
