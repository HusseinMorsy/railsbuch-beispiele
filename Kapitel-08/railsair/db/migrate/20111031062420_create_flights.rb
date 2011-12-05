class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :nr
      t.datetime :departure_datetime

      t.timestamps
    end
  end
end
