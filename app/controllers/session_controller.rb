class SessionController < ApplicationController
	def new
		@user = User.all
	end
	
	def create
	@user = User.find_by(email: params[:user][:email])
		if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successfully logged in!"
      redirect_to root_path
    else
      flash[:alert] = "Invalid username"
      redirect_to login_path
    end
	end

	def destroy
		session[:user_id] = nil
	  flash[:notice] = "You have been logged out!"
	  redirect_to new_session_path
	end
end
