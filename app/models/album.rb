class Album < ActiveRecord::Base
  belongs_to :artist
  has_one :genre
  has_one :producer
  has_one :label
  has_and_belongs_to_many :songs

  has_attached_file :cover, styles: { normal: "300x300>", thumb: "50x50>" },
  default_url: ':style/missing.png'

  validates :artist_id, :album_title, :date_released, presence: true
  validates :album_title, length: { maximum: 50 }
  validates_date :date_released
end