class CreateRentals < ActiveRecord::Migration[6.1]
  def change
      create_table :rentals do |t|
        t.string :rental_name
        t.integer :rent
        t.text :address
        t.integer :age
        t.text :remark

        t.timestamps
      end
    end
  end
