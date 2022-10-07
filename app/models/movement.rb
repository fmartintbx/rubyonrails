# frozen_string_literal: true

class Movement < ApplicationRecord
  # Relations
  belongs_to :product

  MovementTypes = { add: 0, remove: 1 }.freeze
  # Validations
  validates :quantify, presence: true, numericality: true

  def self.get_movement_types
    {
      'Agregar' => MovementTypes[:add],
      'Quitar' => MovementTypes[:remove]
    }
  end
end
