# frozen_string_literal: true

class Facility < ApplicationRecord
  has_many :patients

  validates :name, presence: true
end
