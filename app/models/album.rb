class Album < ActiveRecord::Base
  belongs_to :artist
  has_one :genre
  has_one :producer
  has_one :label
  has_many :songs, dependent: :destroy

  has_attached_file :cover, styles: { small: "34x34" },
    default_url: "images/:style/missing.png"

  validates :artist_id, :album_title, :genre_id, :producer_id, :date_released,
  :label_id, presence: true
  validates :album_title, length: { maximum: 50 }
  validates_date :date_released
end
