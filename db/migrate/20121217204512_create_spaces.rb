class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.references :location
      t.references :package
      t.references :sector
      t.references :format
      t.references :presentation
      t.integer :nummer
      t.integer :wert
      t.float :preis

      t.timestamps
    end
    add_index :spaces, :location_id
    add_index :spaces, :package_id
    add_index :spaces, :sector_id
    add_index :spaces, :format_id
    add_index :spaces, :presentation_id
  end
end
