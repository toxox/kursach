class Manager < ActiveRecord::Base
  belongs_to :artist

  validates :name, :artist_id, presence: true
  validates :name, length: { maximum: 30 }
end
