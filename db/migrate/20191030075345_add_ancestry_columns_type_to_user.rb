class AddAncestryColumnsTypeToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :ancestry_depth, :integer
    remove_index :users, name: 'index_users_on_ancestry'
    change_column :users, :ancestry, :text
    add_index :users, :ancestry, length: 250
  end

  def down
  	remove_column :users, :ancestry_depth
  	remove_index :users, name: 'index_users_on_ancestry'
    change_column :users, :ancestry, :string
    add_index :users, :ancestry
  end
end
