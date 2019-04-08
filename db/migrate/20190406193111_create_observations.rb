class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.text :description, null: false
      t.datetime :moment, null: false
      t.belongs_to :admission

      t.timestamps
    end
  end
end
