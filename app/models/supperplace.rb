class Supperplace < ActiveRecord::Base
  has_many :photos
  has_many :opening_hours
end
