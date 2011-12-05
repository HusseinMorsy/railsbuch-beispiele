class AddPurchasePriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :purchase_price, :decimal,   :precision => 8, :scale => 2
  end
end
