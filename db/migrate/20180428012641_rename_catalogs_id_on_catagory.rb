class RenameCatalogsIdOnCatagory < ActiveRecord::Migration[5.2]
  def change
    rename_column :catagories, :catalogs_id, :catalog_id
  end
end
