class RemovePlanIDformTerms < ActiveRecord::Migration[5.2]
  def change
    remove_column :terms, :plan_id
  end
end
