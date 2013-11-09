class FixTypeInSpecie < ActiveRecord::Migration
  def up
  	rename_column :species, :type, :specie_type
  end

  def down
  end
end
