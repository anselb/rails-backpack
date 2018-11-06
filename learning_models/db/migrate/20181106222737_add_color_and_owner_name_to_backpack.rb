class AddColorAndOwnerNameToBackpack < ActiveRecord::Migration[5.2]
  def change
    add_column :backpacks, :color, :string
    add_column :backpacks, :owner_name, :string
    add_index :backpacks, :owner_name
  end
end
