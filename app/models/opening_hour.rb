class OpeningHour < ActiveRecord::Base
  belongs_to :supperplace

  enum day: [ :everyday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :publicholiday ]

  DAYS_SELECT = [ 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday', 'everyday', 'publicholiday' ]

  validates :day, presence: true, inclusion: { in: DAYS_SELECT }
  validates :opening_time, presence: true
  validates :closing_time, presence: true
end
