class AddInstitutionIdToCampu < ActiveRecord::Migration
  def change
    add_column :campus, :institution_id, :integer
  end
end
