class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      #t.integer :report_id
      t.datetime :wann
      t.text :ort
      t.text :beschr_ort
      t.text :ereignis
      t.integer :kategorie

      t.timestamps null: false
    end
  end
end
