class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :property
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
