# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :chronic_conditions, class_name: 'ChronicCondition'
  has_many :medication_orders
  has_many :diagnostic_procedures
  has_many :diagnoses
  has_many :treatments
  has_and_belongs_to_many :allergies

  belongs_to :facility
  belongs_to :admission

  enum gender: %i[male female other]

  validates :first_name, :last_name, :mr, :dob, :gender, presence: true
end
