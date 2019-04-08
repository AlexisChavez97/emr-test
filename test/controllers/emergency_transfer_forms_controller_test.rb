# frozen_string_literal: true

require 'test_helper'

class EmergencyTransferFormsControllerTest < ActionDispatch::IntegrationTest

  test 'POST #create' do

    params = {
      emergency_transfer_form: {
        facility_name: 'Mike',
        first_name: 'Lamborghini',
        middle_name: 'Lamborghini',
        last_name: 'Aventador',
        mr: '2015',
        dob: Time.now - 10.years,
        gender: 'male',
        age: '13',
        admission_moment: Time.now,
        patient_diagnosis_coding_system: '1234567',
        patient_diagnosis_code: '1234567',
        patient_diagnosis_description: '1234567',
        admission_diagnosis_coding_system: '1234567',
        admission_diagnosis_code: '1234567',
        admission_diagnosis_description: '1234567',
        chronic_conditions_coding_system: '1234567',
        chronic_conditions_code: '1234567',
        chronic_conditions_description: '1234567',
        symptom_description: '1234567',
        observation_description: '1234567',
        observation_moment: Time.now,
        allergy_description: '1234567',
        medication_order_name: '12345',
        admission_diagnosis_medication_order_namecode: '1234567',
        mass_unit: 'mg',
        dosage: 12,
        medication_route: 'PO',
        necessity: '1234567',
        value: '1234567',
        frequency_unit: 'hour',
        diagnostic_procedure_description: '1234567',
        diagnostic_procedure_moment: Time.now,
        treatment_description: '1234567',
        treatment_necessity: '1234567'
      }
    }

    assert_difference 'Patient.count', 1 do
      post emergency_transfer_forms_path, params: params
    end

    assert :success

    assert_redirected_to patients_path
  end
end
