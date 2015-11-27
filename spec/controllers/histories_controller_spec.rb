require 'rails_helper'

RSpec.describe HistoriesController, type: :controller do
  describe "#index" do
    it "assigns @histories" do
      get :index
      expect(assigns(:histories)).to_not be_nil
    end
  end
end
