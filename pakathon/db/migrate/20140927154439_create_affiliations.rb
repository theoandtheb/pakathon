class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.string :title
      t.text :desctiption

      t.timestamps
    end
  end
end
