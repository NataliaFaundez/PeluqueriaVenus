class Client < ActiveRecord::Base
	has_many :sales, dependent: :destroy
	has_many :details, dependent: :destroy

	validates :rut , presence: true 
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

	validates :nombre, presence: true #dice que esta 
	validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	#falta de numeros positivos
	validates :telefono, numericality: { only_integer: true }	
end
