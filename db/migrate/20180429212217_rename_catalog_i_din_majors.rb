class RenameCatalogIDinMajors < ActiveRecord::Migration[5.2]
  def change
    rename_column :majors, :catalogs_id, :catalog_id
  end
end
