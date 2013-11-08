class AddTypeToSpecies < ActiveRecord::Migration
  def change
    add_column :species, :type, :string
  end
end
