class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
