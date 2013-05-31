class Artist < ActiveRecord::Base
  has_one :manager
  has_and_belongs_to_many :concerts

  has_many :albums, dependent: :destroy

  has_attached_file :photo, styles: { normal: "300x300>", thumb: "50x50>" },
  default_url: ':style/missing.png'

  validates :name, :date_started, :n_of_participants, presence: true
  validates :name, length: { maximum: 30 }
  validates :n_of_participants, numericality: { only_integers: true,
   greater_than: 0, less_than_or_equal_to: 5000 }
  validates_date :date_started
end
