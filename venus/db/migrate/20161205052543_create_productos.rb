class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigo_producto
      t.string :nomber
      t.integer :precio
      t.integer :tock

      t.timestamps null: false
    end
  end
end
