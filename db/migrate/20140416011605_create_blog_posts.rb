class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :text_raw
      t.string :text
      t.string :title
      t.references :author, index: true

      t.timestamps
    end
  end
end
