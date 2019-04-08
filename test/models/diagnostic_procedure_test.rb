# frozen_string_literal: true

require 'test_helper'

class DiagnosticProcedureTest < ActiveSupport::TestCase
  def setup
    @subject = DiagnosticProcedure.new
    @patient = patients(:bojack)
  end

  test 'diagnostic procedure is valid' do
    @subject.description = 'diagnostic description'
    @subject.moment = Time.now
    @subject.patient = @patient

    assert @subject.save
  end
end
