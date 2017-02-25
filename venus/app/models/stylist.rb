class Stylist < ActiveRecord::Base
	has_many :services, dependent: :destroy
	validates_associated :services

	validates :nombre_estilista, presence: true #dice que esta 
	validates :nombre_estilista, length: { in: 6..30, message: "el nombre debe tener entre 6 y 30 caracteres" }
	validates :nombre_estilista, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	

	validates :telefono, numericality: { only_integer: true, message: "solo se permmiten números enteros"}
	validates :telefono, numericality: {:greater_than_or_equal_to => 0, message: "solo se permiten números positivos"}
	validates :telefono, length: { is: 9 }
	#pueden tener misma direccion y telefono, una pareja por ejempllo
	validates :direccion, presence: true #dice que esta 
	validates :direccion, length: { in: 6..30, message: "la direccion debe tener entr 6 y 30 caracteres" }

	validates :precio, numericality: { only_integer: true, message: "solo se permiten números enteros" }
	validates :precio, numericality: {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999, message: "el precio debe ser un numero entre 0 y 9.999.999"}
	#se supone que es para los numeros positivos si funciona se elimina la de arriba 
	#y se deja la de abajo y se reemplaza todas las que sean numericas y si no queda la de arriba
	validates :sueldo_base, numericality: {only_integer: true, message: "solo se permiten números enteros"}
	validates :sueldo_base, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999, message: "el sueldo base debe ser un número entre 0 y 9.999.999" }
end
