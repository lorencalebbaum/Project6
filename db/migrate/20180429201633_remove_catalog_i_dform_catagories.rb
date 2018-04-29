class RemoveCatalogIDformCatagories < ActiveRecord::Migration[5.2]
  def change
    remove_column :catagories, :catalog_id
  end
end
