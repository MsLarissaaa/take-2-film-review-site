class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :review_id
      t.integer :commenter_id
      t.string  :content
      t.timestamps null: false
    end
  end
end
