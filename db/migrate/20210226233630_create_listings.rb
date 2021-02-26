class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :location
      t.integer :bds
      t.integer :ba
      t.integer :area
      t.string :developer
      t.integer :price

      t.timestamps
    end
  end
end
