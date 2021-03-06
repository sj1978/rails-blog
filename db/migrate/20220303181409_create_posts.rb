class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title
      t.text :text
      t.text :bio
      t.integer :comments_counter
      t.integer :likes_counter

      t.timestamps
    end
  end
end
