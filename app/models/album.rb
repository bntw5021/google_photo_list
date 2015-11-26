class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :album_url, presence: true
  validates :cover_url, presence: true
  validates :count, presence: true
end
