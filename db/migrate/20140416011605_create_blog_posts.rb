class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :text_raw
      t.text :text
      t.string :title
      t.references :author, index: true

      t.timestamps
    end
  end
end
