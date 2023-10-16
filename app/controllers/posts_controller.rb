class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to :posts
  end
 end

private
  def post_params
    params.require(:post).permit(:post_name, :url, :comment)
  end
