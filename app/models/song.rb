class Song < ActiveRecord::Base
  belongs_to :album

  validates :album_id, :song_title, :song_duration, presence: true
  validates :song_title, length: { maximum: 25 }
  validates :song_duration, format: { with: /\d+:\d\d/,
               message: "Please use format of m:ss" }

end
