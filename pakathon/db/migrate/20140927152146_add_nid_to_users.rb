class AddNidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nid, :integer
  end
end
