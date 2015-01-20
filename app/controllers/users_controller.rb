class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def login
    @user = User.new
  end

  def auth
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:current_user] = @user.email
      redirect_to '/', :notice => "You have been logged in successfully"
    else
      redirect_to '/login', :notice => 'Invalid username password'
    end
  end

  def logout
    session[:current_user] = nil
    redirect_to '/', :notice => 'you are now logged out'
  end


  private

  def user_params
    params.require(:user).permit( :email, :password)
  end
end