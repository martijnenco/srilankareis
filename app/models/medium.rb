# frozen_string_literal: true

class Medium < ApplicationRecord
  extend Mobility

  translates :alt_text, :title, plain: true
  translates :description

  belongs_to :attachable, polymorphic: true, touch: true

  has_one_attached :file, dependent: :destroy do |attachable|
    attachable.variant :thumb,  resize_to_limit: [200,  200],   format: :webp, saver: { strip: true }
    attachable.variant :card,   resize_to_fill:  [832,  384],   format: :webp, saver: { strip: true }
    attachable.variant :large,  resize_to_fill:  [1681, 512],   format: :webp, saver: { strip: true }
    # attachable.variant :large,  resize_to_fill:  [1000, 1000], format: :webp, saver: { strip: true }
  end

  validates :alt_text, :title, presence: true
end
