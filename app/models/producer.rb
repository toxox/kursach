class Producer < ActiveRecord::Base
  belongs_to :album

  validates :name, :year_started, presence: true
  validates :name, length: { maximum: 30 }
  validates :year_started, inclusion: { in: '1900'..Date.today.year.to_s },
   format: { with: /(19|20)\d{2}/i, message: "should be a four-digit year" }
end
