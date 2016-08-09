class AddDivisionToUser < ActiveRecord::Migration
  def change
    add_column :users, :division_id, :integer
  end
end
