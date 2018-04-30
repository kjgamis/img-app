class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # logs in user after making account
      session[:user_id] = @user.id
      redirect_to photos_url
    else
      render :new
    end
  end
end
