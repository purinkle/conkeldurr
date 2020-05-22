class PostsController < ApplicationController
  def index
    posts = Post.all
    render locals: { posts: posts }
  end

  def new
    post = Post.new
    render locals: { post: post }
  end

  def create
    post = Post.new(post_params)
    post.save

    redirect_to post_url(post)
  end

  def show
    post = Post.find(params[:id])
    render locals: { post: post }
  end

  def edit
    post = Post.find(params[:id])
    render locals: { post: post }
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)

    redirect_to post_url(post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
