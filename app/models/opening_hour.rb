class OpeningHour < ActiveRecord::Base
  belongs_to :supperplace

  validates :day, presence: true, inclusion: { in: 1..7 }
  validates :opening_time, presence: true
  validates :closing_time, presence: true

end
