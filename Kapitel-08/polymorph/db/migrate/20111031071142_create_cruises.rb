class CreateCruises < ActiveRecord::Migration
  def change
    create_table :cruises do |t|
      t.string :name
      t.integer :cabins

      t.timestamps
    end
  end
end
