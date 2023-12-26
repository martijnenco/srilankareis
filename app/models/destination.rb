# frozen_string_literal: true

class Destination < ApplicationRecord
  extend Mobility

  translates :title, plain: true
  translates :description

  has_many :media, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :media, allow_destroy: true
end
