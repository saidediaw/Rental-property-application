class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :railway
      t.string :station_name
      t.integer :walking_time
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
