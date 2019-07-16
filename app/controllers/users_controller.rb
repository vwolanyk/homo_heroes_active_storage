class UsersController < ApplicationController

  def new

    @user = User.new

  end

  def create
    @user = User.new

    @user.email    = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save

      # default behaviour of flash works on a redirect
      flash[:notice] = 'Welcome New User!'
      redirect_to queer_icons_path
    else
      # flash.now works on the same request
      flash.now[:error] = 'YOU DID NOT FOLLOW THE YELLOW BRICK ROAD!'
      render :new
    end
  end

end
