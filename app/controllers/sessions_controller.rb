class SessionsController < ApplicationController

  def new

  end

  def create

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Logged In!!'
      redirect_to :queer_icons
    else
      render "new"
    end

  end

  def destroy

  session[:user_id] = nil
  redirect_to root_path
  end
end
