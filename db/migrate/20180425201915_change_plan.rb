class ChangePlan < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, :majors, index: true
    add_foreign_key :plans, :majors
  end
end
