class Song < ActiveRecord::Base
  has_and_belongs_to_many :albums

  validates :song_title, :song_duration, presence: true
  validates :song_title, length: { maximum: 25 }
  validates :song_duration, format: { with: /\d+:\d\d/,
               message: "Please use format of m:ss" }

end
