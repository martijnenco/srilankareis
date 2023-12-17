# frozen_string_literal: true

class CreateMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :media do |t|
      t.string :alt_text
      t.string :title
      t.references :attachable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
