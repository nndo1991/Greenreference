class Specie < ActiveRecord::Base
  attr_accessible :family, :image, :info, :name, :origin, :properties, :sci_name, :size, :specie_type

	validates_presence_of :image, message: "Por favor selecciona una imagen"
	validates_presence_of :specie_type, message: "Por favor selecciona un tipo"
	validates_presence_of :name, message: "Por favor ingresa el nombre"

  SPECIE_TYPES = ["Arbol", "Flor", "Hortaliza"]
  mount_uploader :image, ImageUploader
end
