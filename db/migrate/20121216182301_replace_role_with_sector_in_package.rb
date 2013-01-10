class ReplaceRoleWithSectorInPackage < ActiveRecord::Migration
  def up
    change_table :packages do |t|
      t.integer :sector_id
      t.integer :spaces_count
    end
    remove_column :packages, :role_id
    remove_column :packages, :roles_count
  end

  def down
    add_column :packages, :role_id, :integer
    add_column :packages, :roles_count, :integer
    remove_column :packages, :sector_id
    remove_column :packages, :spaces_count
  end
end
