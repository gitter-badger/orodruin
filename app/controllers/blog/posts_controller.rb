class Blog::PostsController < ApplicationController
  expose(:posts, model: Blog::Post)
  expose(:post, model: Blog::Post, attributes: :post_params)

  def create
    if post.save
      redirect_to post
    else
      render :new
    end
  end

  def update
    if post.save
      redirect_to post
    else
      render :edit
    end
  end

  def destroy
    if post.delete
      redirect_to blog_posts_path
    else
      redirect_to post
    end
  end

  protected

  def post_params
    params.require(:blog_post).permit(:title, :content_raw)
  end
end
