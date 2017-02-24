class Stylist < ActiveRecord::Base
	has_many :services, dependent: :destroy
	validates_associated :services

	validates :nombre_estilista, presence: true #dice que esta 
	validates :nombre_estilista, length: { in: 6..30 }
	validates :nombre_estilista, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	
	#falta de numeros positivos
	validates :telefono, numericality: { only_integer: true }
	validates :telefono, length: { is: 9 }
	#pueden tener misma direccion y telefono, una pareja por ejempllo
	validates :direccion, presence: true #dice que esta 
	validates :direccion, length: { in: 6..30 }
	#validates :precio, numericality: { only_integer: true }
	#se supone que es para los numeros positivos si funciona se elimina la de arriba 
	#y se deja la de abajo y se reemplaza todas las que sean numericas y si no queda la de arriba
	validates :sueldo_base, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 1000000 }
end
