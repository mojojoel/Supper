class Supperplace < ActiveRecord::Base
  has_many :photos
  has_many :opening_hours

  enum state: [ :open, :closed ]

  STATE_SELECT = [ 'open', 'closed' ]

  validates :name, presence: true
  validates :address, presence: true
  validates :crusine, presence: true
  validates :state, presence: true, inclusion: { in: STATE_SELECT }
  validates :phone, length: { is: 8 }, allow_blank: true

end
