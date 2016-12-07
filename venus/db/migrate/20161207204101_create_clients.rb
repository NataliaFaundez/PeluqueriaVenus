class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :rut
      t.string :nombre
      t.string :telefono

      t.timestamps null: false
    end
  end
end
