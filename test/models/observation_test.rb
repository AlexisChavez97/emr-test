# frozen_string_literal: true

require 'test_helper'

class ObservationTest < ActiveSupport::TestCase
  def setup
    @subject = Observation.new
    @admission = admissions(:first)
  end

  test 'observation is valid' do
    @subject.description = 'observation description'
    @subject.moment = Time.now
    @subject.admission = @admission

    assert @subject.save
  end
end
