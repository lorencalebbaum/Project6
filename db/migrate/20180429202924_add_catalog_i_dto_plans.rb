class AddCatalogIDtoPlans < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, :catalogs, index: true
    add_foreign_key :plans, :catalogs
  end
end
