class AddCatalogIDtoMajor < ActiveRecord::Migration[5.2]
  def change
    add_reference :majors, :catalogs, index: true
    add_foreign_key :majors, :catalogs
  end
end
