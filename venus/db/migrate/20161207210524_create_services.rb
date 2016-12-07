class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :codigo_servicio
      t.string :nombre
      t.integer :precio
      t.references :stylist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
