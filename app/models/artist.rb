class Artist < ActiveRecord::Base
  has_one :manager
  has_and_belongs_to_many :concerts

  has_many :albums, dependent: :destroy

  validates :name, :date_started, :n_of_participants, presence: true
  validates :name, length: { maximum: 30 }
  validates_date :date_started
end
