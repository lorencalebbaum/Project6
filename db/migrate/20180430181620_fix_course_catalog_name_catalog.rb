class FixCourseCatalogNameCatalog < ActiveRecord::Migration[5.2]
  def change
    rename_column :course_catalogs, :catalogs_id, :catalog_id
  end
end
