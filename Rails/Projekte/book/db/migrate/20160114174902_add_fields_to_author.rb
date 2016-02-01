class AddFieldsToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :geburtsdatum, :datetime
  end
end
