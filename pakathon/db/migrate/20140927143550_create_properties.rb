class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :desctiption
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
