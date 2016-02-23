class AddPosterCastDirectionDurationToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :poster_image_file, :string
    add_column :movies, :cast, :string
    add_column :movies, :direction, :string
    add_column :movies, :duration, :integer, default: 1
  end
end
