# frozen_string_literal: true

class EmergencyTransferForm
  include ActiveModel::Model

  attr_accessor :facility_name, :first_name, :middle_name, :last_name, :mr,
                :dob, :gender, :age, :admission_moment, :patient_diagnosis_coding_system, 
                :patient_diagnosis_code, :patient_diagnosis_description,
                :admission_diagnosis_coding_system, :admission_diagnosis_code,
                :admission_diagnosis_description, :chronic_conditions_coding_system,
                :chronic_conditions_code, :chronic_conditions_description, :symptom_description,
                :observation_description, :observation_moment, :allergy_description,
                :medication_order_name, :mass_unit, :dosage, :medication_route, :necessity,
                :value, :frequency_unit, :diagnostic_procedure_description,
                :diagnostic_procedure_moment, :treatment_description,
                :treatment_necessity

  validates :facility_name, :first_name, :middle_name, :last_name, :mr,
            :dob, :gender, :age, :admission_moment, :patient_diagnosis_coding_system, 
            :patient_diagnosis_code, :patient_diagnosis_description,
            :admission_diagnosis_coding_system, :admission_diagnosis_code,
            :admission_diagnosis_description, :chronic_conditions_coding_system,
            :chronic_conditions_code, :chronic_conditions_description, :symptom_description,
            :observation_description, :observation_moment, :allergy_description,
            :medication_order_name, :mass_unit, :dosage, :medication_route, :necessity,
            :value, :frequency_unit, :diagnostic_procedure_description,
            :diagnostic_procedure_moment, :treatment_description,
            :treatment_necessity, presence: true

  def save
    return false if invalid?

    ActiveRecord::Base.transaction do
      admission = Admission.create!(moment: admission_moment)

      facility = Facility.create!(name: facility_name)

      @patient = Patient.create!(first_name: first_name, middle_name: middle_name,
                                last_name: last_name, mr: mr, dob: dob, gender: gender,
                                admission: admission, age: age, facility: facility)

      Symptom.create!(description: symptom_description, admission: admission)

      Observation.create!(description: observation_description,
                          moment: observation_moment, admission: admission)

      Diagnosis.create!(coding_system: admission_diagnosis_coding_system,
                        code: admission_diagnosis_code,
                        description: admission_diagnosis_description,
                        admission: admission, patient: @patient)

      @allergy = Allergy.create!(description: allergy_description)

      ChronicCondition.create!(coding_system: chronic_conditions_coding_system,
                               code: chronic_conditions_code,
                               description: chronic_conditions_description,
                               admission: admission, patient: @patient)

      order_frequency = OrderFrequency.create!(value: value,
                                               frequency_unit: frequency_unit)

      MedicationOrder.create!(name: medication_order_name,
                              mass_unit: mass_unit, dosage: dosage,
                              medication_route: medication_route, order_frequency: order_frequency,
                              patient: @patient, necessity: necessity)

      DiagnosticProcedure.create!(description: diagnostic_procedure_description,
                                  moment: diagnostic_procedure_moment,
                                  patient: @patient)

      Diagnosis.create!(coding_system: patient_diagnosis_coding_system,
                        code: patient_diagnosis_code,
                        description: patient_diagnosis_description,
                        admission: admission, patient:@patient)

      Treatment.create!(description: treatment_description,
                        necessity: treatment_necessity, patient: @patient)
    end
    @allergy.patients << @patient

    true
  rescue ActiveRecord::StatementInvalid => e
    errors.add(:base, e.message)

    false
  end
end
