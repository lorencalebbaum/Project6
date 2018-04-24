class DropSemester < ActiveRecord::Migration[5.2]
  def change
    drop_table :semesters
  end
end
