# frozen_string_literal: true

class Observation < ApplicationRecord
  belongs_to :admission

  validates :description, :moment, presence: true
end
