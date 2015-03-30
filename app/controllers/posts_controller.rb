class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully added!"
      redirect_to posts_path
    else
      flash[:alert] = "There was a problem creating your post."
      redirect_to posts_path
    end
  end

private
  def post_params
    params.require(:post).permit(:body)
  end
end
