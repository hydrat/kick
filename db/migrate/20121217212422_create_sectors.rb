class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.string :abkuerzung

      t.timestamps
    end
  end
end
