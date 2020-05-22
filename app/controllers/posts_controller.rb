class PostsController < ApplicationController
  def create
    post = Post.new
    post.save

    redirect_to post_url(post)
  end
end
