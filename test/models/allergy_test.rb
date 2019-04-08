# frozen_string_literal: true

require 'test_helper'

class AllergyTest < ActiveSupport::TestCase
  def setup
    @subject = Allergy.new
  end

  test 'allergy is valid' do
    @subject.description = 'Allergy description'

    assert @subject.save
  end
end
