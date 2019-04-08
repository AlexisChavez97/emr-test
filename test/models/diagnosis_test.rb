# frozen_string_literal: true

require 'test_helper'

class DiagnosisTest < ActiveSupport::TestCase
  def setup
    @subject = Diagnosis.new
    @patient = patients(:bojack)
    @admission = admissions(:first)
  end

  test 'diagnosis is valid' do
    @subject.coding_system = '123'
    @subject.code = '456'
    @subject.description = 'condition description'
    @subject.patient = @patient
    @subject.admission = @admission

    assert @subject.save
  end
end
