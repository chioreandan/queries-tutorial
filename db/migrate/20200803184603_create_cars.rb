# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.float :engine_size
      t.string :make
      t.string :model
      t.integer :fuel_type
      t.string :vin
      t.references :insurance, foreign_key: true

      t.timestamps
    end
  end
end
