class Specie < ActiveRecord::Base
  attr_accessible :family, :image, :info, :name, :origin, :properties, :sci_name, :size
end
