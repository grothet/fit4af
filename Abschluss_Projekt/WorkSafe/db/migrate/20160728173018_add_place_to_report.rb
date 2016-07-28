class AddPlaceToReport < ActiveRecord::Migration
  def change
    add_column :reports, :place_id, :integer
  end
end
