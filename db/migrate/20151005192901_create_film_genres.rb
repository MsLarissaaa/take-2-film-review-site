class CreateFilmGenres < ActiveRecord::Migration
  def change
    create_table :film_genres do |t|
      t.integer :film_id
      t.integer :genre_id
      t.timestamps null: false
    end
  end
end
