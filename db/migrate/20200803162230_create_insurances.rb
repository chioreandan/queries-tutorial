# frozen_string_literal: true

class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.string :ref
      t.integer :plan, default: 0
      t.datetime :start_date
      t.datetime :expiration_date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
