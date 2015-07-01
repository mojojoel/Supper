class Supperplace < ActiveRecord::Base
  has_many :photos
  has_many :opening_hours

  validates :address, presence: true
  validates :crusine, presence: true
  validates :state, presence: true, inclusion: { in: 1..2 }
  validates :phone, length: { is: 8 }, allow_blank: true

end
