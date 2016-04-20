class CreateWorkedHours < ActiveRecord::Migration
  def change
    create_table :worked_hours do |t|
      t.integer :project_id
      t.integer :employee_id
      t.integer :hours

      t.timestamps null: false
    end
  end
end
