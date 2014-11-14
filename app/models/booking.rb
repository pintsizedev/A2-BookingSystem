class Booking < ActiveRecord::Base
  attr_accessible :boat_id, :startDate, :numberInParty
  belongs_to :boat
  has_many :customers, :dependent => :destroy 
end
