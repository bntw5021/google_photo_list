require 'rails_helper'

RSpec.describe History, type: :model do

  describe "validation" do
    let(:album) { Album.new(title: "title", album_url: "album_url", cover_url: "cover_url", count: 0) }

    describe "update_date" do
      let(:no_update_date_history) { History.new(update_date: nil, count: 0, album_id: album.id) }
      it "require update_date" do
        expect(no_update_date_history).to_not be_valid
        expect(no_update_date_history.errors[:update_date]).to_not be_empty
      end
    end

    describe "count" do
      let(:no_count_history) { History.new(update_date: Date.today, count: nil, album_id: album.id) }
      it "require count" do
        expect(no_count_history).to_not be_valid
        expect(no_count_history.errors[:count]).to_not be_empty
      end
    end

    describe "album_id" do
      let(:no_album_id_history) { History.new(update_date: Date.today, count: 0, album_id: nil) }
      it "require album_id" do
        expect(no_album_id_history).to_not be_valid
        expect(no_album_id_history.errors[:album_id]).to_not be_empty
      end
    end

  end

end
