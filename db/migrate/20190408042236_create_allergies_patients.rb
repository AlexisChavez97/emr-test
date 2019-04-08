class CreateAllergiesPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies_patients do |t|
      t.belongs_to :patient
      t.belongs_to :allergy

      t.timestamps
    end
  end
end
