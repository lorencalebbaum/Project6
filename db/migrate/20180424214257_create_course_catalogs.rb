class CreateCourseCatalogs < ActiveRecord::Migration[5.2]
  def change
    create_table :course_catalogs do |t|
      t.references :courses, foreign_key: true
      t.references :catalogs, foreign_key: true

      t.timestamps
    end
  end
end
