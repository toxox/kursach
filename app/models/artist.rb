class Artist < ActiveRecord::Base
  has_one :manager
  has_and_belongs_to_many :concerts

  belongs_to :album
end
