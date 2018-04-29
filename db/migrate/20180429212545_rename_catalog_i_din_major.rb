class RenameCatalogIDinMajor < ActiveRecord::Migration[5.2]
  def change
    rename_column :majors, :catalog_id, :catalogs_id
  end
end
