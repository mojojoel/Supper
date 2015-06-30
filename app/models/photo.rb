class Photo < ActiveRecord::Base
  belongs_to :supperplace

  validates :name, presence: true
  validates :url, presence: true

end
