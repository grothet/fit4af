class AddReportToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :report_id, :integer
  end
end
