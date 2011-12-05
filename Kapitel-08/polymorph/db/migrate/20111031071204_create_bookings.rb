class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :firstname
      t.string :lastname
      t.string :voyage_id
      t.string :voyage_type

      t.timestamps
    end
  end
end
