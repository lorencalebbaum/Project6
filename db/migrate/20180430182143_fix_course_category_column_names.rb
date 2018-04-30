class FixCourseCategoryColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :course_catagories, :courses_id, :course_id
    rename_column :course_catagories, :catagories_id, :catagory_id
  end
end
