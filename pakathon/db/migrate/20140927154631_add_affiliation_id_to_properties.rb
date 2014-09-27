class AddAffiliationIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :affiliation_id, :integer
  end
end
