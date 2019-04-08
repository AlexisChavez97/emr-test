# frozen_string_literal: true

class MedicationOrder < ApplicationRecord
  belongs_to :order_frequency
  belongs_to :patient

  enum mass_unit: [:mg]
  enum medication_route: %i[PO IM SC]

  validates :name, :dosage, :necessity, presence: true

  def described
    "#{name} #{dosage} #{medication_route} #{order_frequency.value} #{order_frequency.frequency_unit} to #{necessity}"
  end
end
