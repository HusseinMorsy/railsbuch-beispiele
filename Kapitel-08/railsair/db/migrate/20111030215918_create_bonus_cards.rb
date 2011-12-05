class CreateBonusCards < ActiveRecord::Migration
  def change
    create_table :bonus_cards do |t|
      t.integer :points
      t.integer :passenger_id

      t.timestamps
    end
  end
end
