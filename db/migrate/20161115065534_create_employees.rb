class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.float :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
