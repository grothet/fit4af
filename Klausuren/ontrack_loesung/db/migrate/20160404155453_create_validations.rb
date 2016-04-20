class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.integer :project_id
      t.text :comment
      t.string :username
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
