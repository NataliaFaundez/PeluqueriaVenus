class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :nombre_estilista
      t.string :telefono
      t.string :direccion
      t.integer :sueldo_base

      t.timestamps null: false
    end
  end
end
