class Label < ActiveRecord::Base
  belongs_to :album

  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :date_started, presence:true
  validates_date :date_started

end
