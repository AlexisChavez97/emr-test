# frozen_string_literal: true

class EmergencyTransferFormsController < ApplicationController
  def new
    @emergency_transfer_form = EmergencyTransferForm.new
  end

  def create
    @emergency_transfer_form = EmergencyTransferForm.new(emergency_transfer_form_params)
    if @emergency_transfer_form.save
      flash[:success] = 'Patient form was succesfully created'
      redirect_to patients_path
    else
      flash[:danger] = 'An error occurred'
      render :new
    end
  end

  private

  def emergency_transfer_form_params
    params.require(:emergency_transfer_form).permit(:facility_name, :first_name,
                                                    :middle_name, :last_name, :mr,
                                                    :dob, :gender, :admission_moment,
                                                    :patient_diagnosis_coding_system,
                                                    :patient_diagnosis_code, :age,
                                                    :patient_diagnosis_description,
                                                    :admission_diagnosis_coding_system,
                                                    :admission_diagnosis_code,
                                                    :admission_diagnosis_description,
                                                    :chronic_conditions_coding_system,
                                                    :chronic_conditions_code,
                                                    :chronic_conditions_description,
                                                    :symptom_description,
                                                    :observation_description,
                                                    :observation_moment, :allergy_description,
                                                    :medication_order_name,
                                                    :mass_unit, :dosage,
                                                    :medication_route, :necessity,
                                                    :value, :frequency_unit,
                                                    :diagnostic_procedure_description,
                                                    :diagnostic_procedure_moment,
                                                    :treatment_description,
                                                    :treatment_necessity)
  end
end
