# frozen_string_literal: true

require 'test_helper'

class TreatmentTest < ActiveSupport::TestCase
  def setup
    @subject = Treatment.new
    @patient = patients(:bojack)
  end

  test 'treatment is valid' do
    @subject.description = 'treatment description'
    @subject.necessity = 'treatment necessity'
    @subject.patient = @patient

    assert @subject.save
  end
end
