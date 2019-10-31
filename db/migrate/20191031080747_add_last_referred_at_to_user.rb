class AddLastReferredAtToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :last_referred_at, :timestamp
  end

  def down
    remove_column :users, :last_referred_at
  end
end
