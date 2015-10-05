class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string  :rateable_type
      t.integer :rateable_id
      t.integer :rater_id
      t.string  :content
      t.timestamps null: false
    end
    add_index :ratings, :rateable_id
  end
end
