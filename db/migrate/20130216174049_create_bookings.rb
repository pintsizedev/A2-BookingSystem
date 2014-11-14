class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.integer :boat_id, :null => false
    	t.date :startDate, :null => false
    	t.integer :numberInParty, :null => false
    	t.timestamps
    end
  end
end
