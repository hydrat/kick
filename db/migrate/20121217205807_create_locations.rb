class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :site
      t.references :sector
      t.references :location_status
      t.string :name
      t.boolean :aktiv
      t.integer :spaces_count
      t.boolean :vertrag
      t.date :zahlungstermin
      t.text :note
      t.text :dispo_note

      t.timestamps
    end
    add_index :locations, :site_id
    add_index :locations, :sector_id
    add_index :locations, :location_status_id
  end
end
