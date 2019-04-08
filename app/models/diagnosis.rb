# frozen_string_literal: true

class Diagnosis < ApplicationRecord
  belongs_to :patient
  belongs_to :admission

  def described
    "#{description} #{code}"
  end
end
