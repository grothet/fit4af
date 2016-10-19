class AddColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :abgeschlossen, :boolean
  end
end
