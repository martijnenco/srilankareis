# frozen_string_literal: true

class Medium < ApplicationRecord
  belongs_to :attachable, polymorphic: true, touch: true

  has_rich_text :description

  has_one_attached :file

  validates :alt_text, :title, presence: true
end
