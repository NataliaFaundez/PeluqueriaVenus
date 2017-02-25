class Service < ActiveRecord::Base
  belongs_to :stylist
  has_many :details, dependent: :destroy
  validates_associated :details

  validates :codigo_servicio, numericality: { only_integer: true, :greater_than_or_equal_to => 0, message: "no se permiten números negativos"}
  validates :codigo_servicio, :presence => {:message => "Usted debe ingresar un codigo"}, length: {minimum: 2, maximum: 50, :message => "El codigo debe tener entre 2 y 50 caracteres"}
  validates :codigo_servicio, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

  validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}, length: {minimum: 2, maximum: 50, :message => "El nombre debe tener entre 2 y 50 caracteres"}
  validates :nombre, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

  validates :precio, numericality: { :greater_than_or_equal_to => 0, message: "no se permiten números negativos"}
  validates :precio, numericality: {only_integer: true, message: "solo se permiten números enteros"}

end
