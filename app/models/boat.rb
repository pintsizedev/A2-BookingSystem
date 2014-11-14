class Boat < ActiveRecord::Base
  attr_accessible :births, :boatName, :size, :startFriday, :startMonday, :startSaturday, :startSunday, :startThursday
  has_many :bookings
end
