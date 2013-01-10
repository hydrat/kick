class CreateDispensers < ActiveRecord::Migration
  def change
    create_table :dispensers do |t|
      t.references :sector
      t.string :name
      t.integer :nummer
      t.string :abkuerzung
      t.integer :slots_count
      t.boolean :banner

      t.timestamps
    end
    add_index :dispensers, :sector_id
  end
end
