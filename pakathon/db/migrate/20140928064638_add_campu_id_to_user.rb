class AddCampuIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :campu_id, :integer
  end
end
