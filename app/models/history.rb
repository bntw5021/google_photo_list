class History < ActiveRecord::Base
  belongs_to :album_id

  validates :update_date, presence: true
  validates :count, presence: true
  validates :album_id, presence: true
end
