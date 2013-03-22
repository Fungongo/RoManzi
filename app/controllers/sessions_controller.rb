class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(["nickname = ?", params[:nickname]]).where(["password = ?", params[:password]]).first
    if user
      flash[:notice] = "Welcome back #{user.nickname}!"
      session[:user_id] = user.id
      redirect_to "/"
    else
      flash[:notice] = "Nickname or password wrong"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
