class RenameMajorsIdOnCatagory < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :catagories, :majors_id, :major_id
  end
end
