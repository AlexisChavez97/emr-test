# frozen_string_literal: true

require 'test_helper'

class ChronicConditionTest < ActiveSupport::TestCase
  def setup
    @subject = ChronicCondition.new
    @patient = patients(:bojack)
    @admission = admissions(:first)
  end

  test 'chronic condition is valid' do
    @subject.coding_system = '123'
    @subject.code = '456'
    @subject.description = 'condition description'
    @subject.patient = @patient
    @subject.admission = @admission

    assert @subject.save
    assert_equal @subject.type, 'ChronicCondition'
  end
end
