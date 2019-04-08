class CreateDiagnosticProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnostic_procedures do |t|
      t.text :description, null: false
      t.datetime :moment, null: false
      t.belongs_to :patient

      t.timestamps
    end
  end
end
