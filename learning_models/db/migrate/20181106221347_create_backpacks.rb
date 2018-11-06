class CreateBackpacks < ActiveRecord::Migration[5.2]
  def change
    create_table :backpacks do |t|
      t.string :laptop_name
      t.integer :num_pens

      t.timestamps
    end
  end
end
