class AddInternationalToAirports < ActiveRecord::Migration
  def change
    add_column :airports, :international, :boolean
  end
end
