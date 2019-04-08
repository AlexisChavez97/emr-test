# frozen_string_literal: true

require 'test_helper'

class SymptomTest < ActiveSupport::TestCase
  def setup
    @subject = Symptom.new
    @admission = admissions(:first)
  end

  test 'symptom order is valid' do
    @subject.description = 'symptom description'
    @subject.admission = @admission

    assert @subject.save
  end
end
