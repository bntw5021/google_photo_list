class Album < ActiveRecord::Base
  has_many :histories

  validates :title, presence: true
  validates :album_url, presence: true
  validates :cover_url, presence: true
  validates :count, presence: true
end
