# frozen_string_literal: true

class OrderFrequency < ApplicationRecord
  has_many :medication_orders

  enum frequency_unit: [:hour]
end
