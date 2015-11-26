require 'rails_helper'

RSpec.describe Album, type: :model do

  describe "validation" do

    describe "title" do
      let(:no_title_album) { Album.new(title: nil, album_url: "album_url", cover_url: "cover_url", count: 0) }
      it "require title" do
        expect(no_title_album).to_not be_valid
        expect(no_title_album.errors[:title]).to_not be_empty
      end
    end

    describe "album_url" do
      let(:no_album_url_album) { Album.new(title: "title", album_url: nil, cover_url: "cover_url", count: 0) }
      it "require album_url" do
        expect(no_album_url_album).to_not be_valid
        expect(no_album_url_album.errors[:album_url]).to_not be_empty
      end
    end

    describe "cover_url" do
      let(:no_cover_url_album) { Album.new(title: "title", album_url: "album_url", cover_url: nil, count: 0) }
      it "require cover_url" do
        expect(no_cover_url_album).to_not be_valid
        expect(no_cover_url_album.errors[:cover_url]).to_not be_empty
      end
    end

    describe "count" do
      let(:no_count_album) { Album.new(title: "title", album_url: "album_url", cover_url: "cover_url", count: nil) }
      it "require count" do
        expect(no_count_album).to_not be_valid
        expect(no_count_album.errors[:count]).to_not be_empty
      end
    end

  end

end
