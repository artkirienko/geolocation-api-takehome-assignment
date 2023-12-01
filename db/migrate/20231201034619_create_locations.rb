# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :city
      t.string :state
      t.string :state_code
      t.string :postal_code
      t.string :country
      t.string :country_code
      t.string :ip, index: { unique: true }
      t.jsonb :raw_data

      t.timestamps
    end
    add_index :locations, %i[latitude longitude]
  end
end
