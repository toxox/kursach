class Concert < ActiveRecord::Base
  has_and_belongs_to_many :artists

  validates :location, :date_held, presence: true
  validates :location, length: { maximum: 50 }
  validates_date :date_held
end