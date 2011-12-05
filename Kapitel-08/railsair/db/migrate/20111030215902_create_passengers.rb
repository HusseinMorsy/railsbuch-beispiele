class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
