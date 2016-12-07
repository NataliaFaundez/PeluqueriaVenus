class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :telefono
      t.integer :monto_gastado

      t.timestamps null: false
    end
  end
end
