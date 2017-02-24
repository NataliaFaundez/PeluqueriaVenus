class Client < ActiveRecord::Base
	has_many :sales, dependent: :destroy
	has_many :details, dependent: :destroy
	validates_associated :sales
	validates_associated :details

	validates :rut , :presence => {:message => "Usted debe ingresar un rut"}, length: {minimum: 8, maximum: 9, :message => "El rut debe tener entre 8 y 9 caracteres"}
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}


	validates :nombre, presence: true #dice que esta 
	validates :nombre, length: { in: 6..30 }
	validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	#falta de numeros positivos
	validates :telefono, numericality: { only_integer: true }
	validates :telefono, length: { is: 9 }


end
