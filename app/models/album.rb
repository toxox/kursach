class Album < ActiveRecord::Base
  has_one :artist
  has_one :genre
  has_one :producer
  has_one :label
  has_many :songs
end
