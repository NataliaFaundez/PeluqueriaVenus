class Product < ActiveRecord::Base
	has_many :sales, dependent: :destroy
  validates_associated :sales
  
  # Validamos que el codigo, precio y stock solo sea numerico
  validates :codigo_producto, numericality: { only_integer: true, :greater_than_or_equal_to => 0, message: "no se permiten números negativos"}
  validates :codigo_producto, :presence => {:message => "Usted debe ingresar un codigo"}, length: {minimum: 2, maximum: 50, :message => "El codigo debe tener entre 2 y 50 caracteres"}

  # Validamos que el codigo de producto y producto sea unico
  validates :codigo_producto, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

  validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}, length: {minimum: 2, maximum: 50, :message => "El nombre debe tener entre 2 y 50 caracteres"}
  #validates :nombre, length: { in: 3..20 } no se necesita, ya esta validado el largo
  validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  
  #validates :precio, :numericality => { :greater_than_or_equal_to => 0 }
  #se supone que es para los numeros positivos si funciona se elimina la de arriba 
  #y se deja la de abajo y se reemplaza todas las que sean numericas y si no queda la de arriba
  validates :precio, numericality: { :greater_than_or_equal_to => 0, message: "no se permiten números negativos"}
  validates :precio, numericality: {only_integer: true, message: "solo se permiten números enteros"}
  validates :stock, numericality: { only_integer: true, message: "solo se permiten números enteros"}
  validates :stock, numericality: {:greater_than_or_equal_to => 0, message: "no se permiten números negativos"}
	#el nombre del producto no tiene que ser solo letras, ya que hay productos con nombre de numeros o signos	
end
