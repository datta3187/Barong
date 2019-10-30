class AddAncestryToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ancestry, :string
    add_index :users, :ancestry
  end
end
