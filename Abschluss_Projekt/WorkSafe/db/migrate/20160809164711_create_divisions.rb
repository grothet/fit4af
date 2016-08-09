class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :bezeichnung

      t.timestamps null: false
    end
  end
end
