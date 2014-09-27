class AddUserIdToAffiliations < ActiveRecord::Migration
  def change
    add_column :affiliations, :user_id, :integer
  end
end
