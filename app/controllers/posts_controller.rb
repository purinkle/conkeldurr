class PostsController < ApplicationController
  def index
    posts = Post.all
    render locals: { posts: posts }
  end

  def create
    post = Post.new
    post.save

    redirect_to post_url(post)
  end
end
