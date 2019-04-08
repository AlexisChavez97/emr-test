# frozen_string_literal: true

class Allergy < ApplicationRecord
  has_and_belongs_to_many :patients

  validates :description, presence: true
end
