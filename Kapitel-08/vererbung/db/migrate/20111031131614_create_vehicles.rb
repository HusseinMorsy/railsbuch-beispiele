class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :wheels
      t.integer :seats
      t.integer :wheel_size
      t.integer :speed
      t.integer :cylinder
      t.string :type

      t.timestamps
    end
  end
end
