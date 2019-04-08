# frozen_string_literal: true

class Admission < ApplicationRecord
  has_many :diagnoses
  has_many :symptoms
  has_many :observations
  has_many :patients

  validates :moment, presence: true
end
