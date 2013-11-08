class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.text :image
      t.string :sci_name
      t.string :name
      t.string :family
      t.text :origin
      t.text :size
      t.text :properties
      t.text :info

      t.timestamps
    end
  end
end
