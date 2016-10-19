class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :sifa, :boolean
    add_column :users, :verantwortlich, :boolean
  end
end
