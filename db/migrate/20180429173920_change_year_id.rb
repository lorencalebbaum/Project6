class ChangeYearId < ActiveRecord::Migration[5.2]
  def change
    rename_column :terms, :years_id, :year_id
  end
end
