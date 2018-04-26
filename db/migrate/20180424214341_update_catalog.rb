class UpdateCatalog < ActiveRecord::Migration[5.2]
  def change
    add_column :catalogs, :year, :integer
  end
end
