class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :coding_system
      t.string :code
      t.text :description
      t.string :type
      t.belongs_to :patient
      t.belongs_to :admission

      t.timestamps
    end
  end
end
