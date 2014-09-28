class AddInstitutionIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :institution_id, :string
  end
end
