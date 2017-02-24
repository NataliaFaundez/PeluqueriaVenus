class Product < ActiveRecord::Base
	has_many :sales, dependent: :destroy
  
  # Validamos que el codigo, precio y stock solo sea numerico
  validates :codigo_producto, numericality: { only_integer: true }
  validates :codigo_producto, presence: true #dice que esta 
  validates :nombre, presence: true #dice que esta 
  #validates :precio, numericality: { only_integer: true }
  #se supone que es para los numeros positivos si funciona se elimina la de arriba 
  #y se deja la de abajo y se reemplaza todas las que sean numericas y si no queda la de arriba
  validates :precio, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
  validates :stock, numericality: { only_integer: true }
#falta de numeros positivos

  # Validamos que el codigo de producto y producto sea unico
  validates :codigo_producto, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	
	#el nombre del producto no tiene que ser solo letras, ya que hay productos con nombre de numeros o signos	
end
