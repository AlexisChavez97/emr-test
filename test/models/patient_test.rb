# frozen_string_literal: true

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  def setup
    @subject = Patient.new
    @admission = admissions(:first)
    @facility = facilities(:blue_alps)
  end

  test 'patient is valid' do
    @subject.first_name = 'Mr'
    @subject.middle_name = 'Peanut'
    @subject.last_name = 'Butter'
    @subject.mr = '123'
    @subject.dob = Time.now
    @subject.gender = 0
    @subject.age = '20'
    @subject.admission = @admission
    @subject.facility = @facility

    assert @subject.save
  end
end
