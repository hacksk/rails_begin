class UsersController < ApplicationController
  skip_before_action :check_login, only: [:register, :create, :login, :authenticate]

  def register
    @user = User.new
  end

  def create
    if user_params[:password] != password_confirmation_params[:password_confirmation]
      redirect_to(register_users_path, alert: 'Passwords do not match') and return
    end

    @user = User.new(user_params)
    if @user.save
      redirect_to login_users_path, notice: 'User Successfully registered'
    else
      render 'register'
    end
  end

  def login
    @user = User.new
  end

  def authenticate
    @user = User.where(user_name: user_params[:user_name]).first
    redirect_to(login_users_path, notice: 'Authentication Failed') unless @user
    if @user.password == user_params[:password]
      session['user_id'] = @user.id
      redirect_to articles_path
    else
      redirect_to login_users_path, notice: 'Authentication Failed'
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end

  def password_confirmation_params
    params.require(:user).permit(:password_confirmation)
  end
end
