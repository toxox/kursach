class Genre < ActiveRecord::Base
  belongs_to :album

  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
end
