class CreateCatagories < ActiveRecord::Migration[5.2]
  def change
    create_table :catagories do |t|
      t.references :majors, foreign_key: true
      t.references :catalogs, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
