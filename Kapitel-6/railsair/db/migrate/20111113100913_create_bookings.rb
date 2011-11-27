class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.integer :flight_id

      t.timestamps
    end
  end
end
