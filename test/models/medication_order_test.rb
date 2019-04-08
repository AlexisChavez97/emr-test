# frozen_string_literal: true

require 'test_helper'

class MedicationOrderTest < ActiveSupport::TestCase
  def setup
    @subject = MedicationOrder.new
    @order_frequency = order_frequencies(:six_hr)
    @patient = patients(:bojack)
  end

  test 'medication order is valid' do
    @subject.name = 'Naproxen'
    @subject.dosage = '500 mg'
    @subject.necessity = 'relieve swelling'
    @subject.mass_unit = 0
    @subject.medication_route = 0
    @subject.order_frequency = @order_frequency
    @subject.patient = @patient

    assert @subject.save
  end
end
