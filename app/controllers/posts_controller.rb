class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js
      end
      flash[:notice] = "Post successfully added!"
    else
      flash[:alert] = "There was a problem creating your post."
      redirect_to posts_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:body)
  end
end
