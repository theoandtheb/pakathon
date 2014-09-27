class CreateAffiliationsAndUsers < ActiveRecord::Migration
  def change
  	create_table :affiliations_users, id: false do |t|
  		t.belongs_to :affiliation
  		t.belongs_to :user
    end
  end
end
