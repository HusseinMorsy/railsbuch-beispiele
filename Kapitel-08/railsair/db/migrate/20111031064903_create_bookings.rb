class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passenger_id
      t.float :price

      t.timestamps
    end
  end
end
