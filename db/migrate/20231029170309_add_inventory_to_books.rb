#incorrectly named AddInventoryToBooks, should be AddInventoryToProducts but too late and don't want to cuase issues with rollbacks
class AddInventoryToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory, :integer
  end
end
