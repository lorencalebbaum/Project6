class FixCourseCatalogNameCourse < ActiveRecord::Migration[5.2]
  def change
    rename_column :course_catalogs, :courses_id, :course_id
  end
end
