class UsersController < ApplicationController
   def users
      @users = User.all
   end

   def new
      @user = User.new
   end

   def create
      @user = User.new(user_params)
      if @user.save
         session[:user_id] = @user.id
         redirect_to root_path
      else
         render signup_path
      end
   end


   private
   def user_params
      params.require(:user).permit(:username, :password_digest, :password_confirmation)
   end
end
