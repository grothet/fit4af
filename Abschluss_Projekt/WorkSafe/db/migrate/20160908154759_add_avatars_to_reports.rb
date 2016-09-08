class AddAvatarsToReports < ActiveRecord::Migration
  def change
    add_column :reports, :avatars, :text
  end
end
