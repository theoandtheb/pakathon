class CreateAffiliationsAndProperties < ActiveRecord::Migration
  def change
    create_table :affiliations_properties, id: false do |t|
    	t.belongs_to :affiliation
  		t.belongs_to :property
    end
  end
end
