class OpeningHour < ActiveRecord::Base
  belongs_to :supperplace

  #validates :day, presence: true, inclusion: { in: 0..8 }
  validates :opening_time, presence: true
  validates :closing_time, presence: true

  enum day: [ :everyday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :publicholiday ]

  DAYS_SELECT = [ 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday', 'everyday', 'publicholiday' ]
end
