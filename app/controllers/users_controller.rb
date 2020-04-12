class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_hikes_url(@user), success: "Thank you for signing up!"
      else
        redirect_to new_user_path, danger: "Sign up was unsuccessful, please try again."
      end
    end
  
    def show
      require_login
      @user = User.find(params[:id])
    end
    
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  end
  