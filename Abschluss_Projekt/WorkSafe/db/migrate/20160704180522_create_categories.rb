class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :titel
      t.text :bezeichnung

      t.timestamps null: false
    end
  end
end
