class CreateCourseCatagories < ActiveRecord::Migration[5.2]
  def change
    create_table :course_catagories do |t|
      t.references :courses, foreign_key: true
      t.references :catagories, foreign_key: true

      t.timestamps
    end
  end
end
