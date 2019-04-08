class CreatePatientsAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :patients_allergies do |t|
      t.belongs_to :patient
      t.belongs_to :allergy

      t.timestamps
    end
  end
end
