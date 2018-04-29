class AddCreditstoCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :discription, :description
    add_column :courses, :credits, :integer
  end
end
