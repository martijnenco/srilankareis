# frozen_string_literal: true

class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.string :title

      t.timestamps
    end
  end
end
