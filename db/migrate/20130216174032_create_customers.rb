class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.integer :booking_id, :null => false
    	t.string :title, :null => false
		t.string :firstName, :null => false
		t.string :surname, :null => false
		t.date :dateOfBirth, :null => false
		t.string :addressLineOne
		t.string :addressLineTwo
		t.string :addressLineThree
		t.string :postcode
		t.string :telephoneNumber
		t.string :emailAddress
    	t.timestamps
    end
  end
end
