# frozen_string_literal: true

require 'test_helper'

class AdmissionTest < ActiveSupport::TestCase
  def setup
    @subject = Admission.new
  end

  test 'admission is valid' do
    @subject.moment = Time.now

    assert @subject.save
  end
end
