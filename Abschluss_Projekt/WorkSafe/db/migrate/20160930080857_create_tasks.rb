class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :sap_nr
      t.integer :modi_nr

      t.timestamps null: false
    end
  end
end
