class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :nummer
      t.integer :role_id
      t.integer :format_id
      t.float :totalpreis
      t.integer :roles_count
      t.integer :slots_count
      t.text :webtext

      t.timestamps
    end
  end
end
