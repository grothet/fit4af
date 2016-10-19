class AddAccidentToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :accident_id, :integer
  end
end
