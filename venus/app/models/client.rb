class Client < ActiveRecord::Base
	has_many :sales, dependent: :destroy
	has_many :details, dependent: :destroy
	validates_associated :sales
	validates_associated :details

	validates :rut , presence: true 
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	validates :rut, length: { in: 8..9 }

	validates :nombre, presence: true #dice que esta 
	validates :nombre, length: { in: 6..30 }
	validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	#falta de numeros positivos
	validates :telefono, numericality: { only_integer: true }
	validates :telefono, length: { is: 9 }


end
