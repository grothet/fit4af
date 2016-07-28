class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :kostenstelle
      t.text :bezeichnung

      t.timestamps null: false
    end
  end
end
