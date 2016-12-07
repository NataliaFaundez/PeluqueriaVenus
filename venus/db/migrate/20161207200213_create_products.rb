class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :codigo_producto
      t.string :nombre
      t.integer :precio
      t.integer :stock

      t.timestamps null: false
    end
  end
end
