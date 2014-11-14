class Customer < ActiveRecord::Base
  attr_accessible :booking_id, :title, :firstName, :surname, :dateOfBirth, :addressLineOne, :addressLineTwo, :addressLineThree, :postcode, :telephoneNumber, :emailAddress
  belongs_to :booking
end
