class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string  :title
      t.string  :description
      t.timestamps null: false
    end
  end
end
