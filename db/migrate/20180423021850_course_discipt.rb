class CourseDiscipt < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :designator, :string
    add_column :courses, :discription, :string
  end
end
