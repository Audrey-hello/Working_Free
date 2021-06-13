class UsersController < ApplicationController


  def create
    @user = current_user
    current_user = User.create!(user_params)
    session[:user_id] = current_user.id
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email_address, :password, :photo)
    end
end
