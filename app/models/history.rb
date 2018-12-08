class History < ActiveRecord::Base
  belongs_to :album

  validates :update_date, presence: true
  validates :count, presence: true
  validates :album, presence: true
end
