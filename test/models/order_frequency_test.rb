# frozen_string_literal: true

require 'test_helper'

class OrderFrequencyTest < ActiveSupport::TestCase
  def setup
    @subject = OrderFrequency.new
  end

  test 'order frequency is valid' do
    @subject.value = '8hrs'
    @subject.frequency_unit = 0

    assert @subject.save
  end
end
