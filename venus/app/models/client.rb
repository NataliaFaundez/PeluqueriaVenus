class Client < ActiveRecord::Base
	has_many :sales, dependent: :destroy
	has_many :details, dependent: :destroy
	validates_associated :sales
	validates_associated :details

	validates :rut , :presence => {:message => "Usted debe ingresar un rut"}, length: {minimum: 8, maximum: 9, :message => "el rut debe tener entre 8 y 9 caracteres"}
	validates :rut, numericality: { :greater_than_or_equal_to => 0, only_integer: true, message: "no se permiten números negativos ni letras" }
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}



	validates :nombre, presence: true #dice que esta 
	validates :nombre, length: { in: 6..30, message: "el nombre debe tener entre 6 y 30 caracteres"}
	validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	#falta de numeros positivos
	validates :telefono, numericality: { only_integer: true, :greater_than_or_equal_to => 0, message: "no se permiten números negativos" }
	validates :telefono, length: { is: 9, message: "el telefono debe tener 9 números enteros"}


end
