module ApplicationHelper
  def diagnoses(admission)
    admission.diagnoses.map(&:described).to_sentence
  end

  def admission_observations(patient)
    patient.admission.observations.map(&:description).to_sentence
  end

  def admission_symptoms(patient)
    patient.admission.symptoms.map(&:description).to_sentence
  end

  def allergies(patient)
    patient.allergies.map(&:description).to_sentence
  end

  def chronic_conditions(patient)
    patient.chronic_conditions.map(&:described).to_sentence
  end

  def medication_orders(patient)
    patient.medication_orders.map(&:described).to_sentence(last_word_connector: 'to')
  end

  def diagnostic_procedures(patient)
    patient.diagnostic_procedures.map(&:description).to_sentence
  end

  def treatments(patient)
    patient.treatments.map(&:described).to_sentence
  end
end
