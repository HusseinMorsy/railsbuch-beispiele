class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :nr

      t.timestamps
    end
  end
end
