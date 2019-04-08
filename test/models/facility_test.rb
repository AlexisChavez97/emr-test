# frozen_string_literal: true

require 'test_helper'

class FacilityTest < ActiveSupport::TestCase
  def setup
    @subject = Facility.new
  end

  test 'facility is valid' do
    @subject.name = 'White Alps'

    assert @subject.save
  end
end
