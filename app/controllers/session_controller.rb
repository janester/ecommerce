class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where( email: params[:email] ).first
    if user.present? && user.authenticate( params[:password] )
      session[:user_id] = user.id
      @auth = user
      Notifications.login_message(@auth).deliver
      redirect_to(root_path)
    else
      session[:user_id] = nil
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    @auth = nil
    redirect_to(root_path)
  end
end