class History < ActiveRecord::Base
  validates :update_date, presence: true
  validates :count, presence: true
  validates :album, presence: true
  belongs_to :album
end
