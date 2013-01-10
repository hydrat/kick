class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.references :holder
      t.references :format
      t.integer :anzahl
      t.integer :reihenfolge
      t.float :preis

      t.timestamps
    end
    add_index :slots, :holder_id
    add_index :slots, :format_id
  end
end
