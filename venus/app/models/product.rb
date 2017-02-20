class Product < ActiveRecord::Base
	has_many :sales, dependent: :destroy
  
  # Validamos que el codigo, precio y stock solo sea numerico
  validates :codigo_producto, numericality: { only_integer: true }
  validates :codigo_producto, presence: true #dice que esta 
  validates :nombre, presence: true #dice que esta 
  validates :precio, numericality: { only_integer: true }
  validates :stock, numericality: { only_integer: true }

  # Validamos que el codigo de producto y producto sea unico
  validates :codigo_producto, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	
	#el nombre del producto no tiene que ser solo letras, ya que hay productos con nombre de numeros o signos	
end
