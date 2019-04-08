# frozen_string_literal: true

class Treatment < ApplicationRecord
  belongs_to :patient

  validates :description, :necessity, presence: true

  def described
    "#{description} to #{necessity}"
  end
end
