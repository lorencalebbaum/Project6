class CreateYears < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.references :plan, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
