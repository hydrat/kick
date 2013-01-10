class CreateHolders < ActiveRecord::Migration
  def change
    create_table :holders do |t|
      t.references :location
      t.references :dispenser
      t.string :name

      t.timestamps
    end
    add_index :holders, :location_id
    add_index :holders, :dispenser_id
  end
end
