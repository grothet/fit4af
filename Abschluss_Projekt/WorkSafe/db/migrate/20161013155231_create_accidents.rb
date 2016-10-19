class CreateAccidents < ActiveRecord::Migration
  def change
    create_table :accidents do |t|
      t.datetime :wann
      t.text :wer
      t.text :was
      t.boolean :arzt
      t.integer :ausfall

      t.timestamps null: false
    end
  end
end
