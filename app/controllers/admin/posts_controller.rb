class Admin::PostsController < ApplicationController
  before_filter :check_login

  def index
    @posts = Post.find(:all)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.author = current_user

    if @post.save
      redirect_to admin_posts_path
    else
      render :action => "new"
    end
  end

end

