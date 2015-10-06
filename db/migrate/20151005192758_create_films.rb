class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string  :title
      t.date  :release_date
      t.string  :description
      t.string  :thumb_url
      t.string  :large_url
      t.timestamps null: false
    end
  end
end
