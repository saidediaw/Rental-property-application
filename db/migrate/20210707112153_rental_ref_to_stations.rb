class RentalRefToStations < ActiveRecord::Migration[6.1]
  def change
        add_reference :stations, :rental, foreign_key: true
      end
    end
