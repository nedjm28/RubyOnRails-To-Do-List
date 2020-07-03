class CreatePosts < ActiveRecord::Migration[6.0]
  def up
    create_table :posts do |t|
      t.string "title_post", :limit => 250, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
