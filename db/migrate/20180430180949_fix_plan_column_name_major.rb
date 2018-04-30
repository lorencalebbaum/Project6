class FixPlanColumnNameMajor < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :majors_id, :major_id
  end
end
