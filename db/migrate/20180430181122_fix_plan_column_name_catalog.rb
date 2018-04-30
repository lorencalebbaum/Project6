class FixPlanColumnNameCatalog < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :catalogs_id, :catalog_id
  end
end
