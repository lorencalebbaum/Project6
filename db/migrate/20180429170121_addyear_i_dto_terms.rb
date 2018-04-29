class AddyearIDtoTerms < ActiveRecord::Migration[5.2]
  def change
    add_reference :terms, :years, index: true
    add_foreign_key :terms, :years
    remove_column :terms, :year
  end
end
