class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name, null: false
      t.decimal :dosage, null: false
      t.text :necessity, null: false
      t.integer :mass_unit, null: false
      t.integer :medication_route, null: false
      t.belongs_to :order_frequency
      t.belongs_to :patient

      t.timestamps
    end
  end
end
