class AddBoolsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_asking, :boolean
    add_column :users, :is_offering, :boolean
    add_column :users, :is_endorsing, :boolean
  end
end
