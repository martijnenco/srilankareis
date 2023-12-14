class Destination < ApplicationRecord
  has_many :media, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :media, allow_destroy: true

  has_rich_text :description
end
