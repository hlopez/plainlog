class Admin::SessionController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user] = user.id
      redirect_to admin_posts_path
    else
      reset_session
      redirect_to new_admin_session_path
    end
  end

  def destroy
    reset_session if logged_in?
    redirect_to posts_path
  end
end
