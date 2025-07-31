class SessionController < ApplicationController
	skip_before_action :require_login, only: [:create, :new]

	def new
		@user = User.all
	end
	
	def create
  session_params = params.require(:user).permit(:email, :password_digest)

  @user = User.find_by(email: session_params[:email])
  if @user && @user.authenticate(session_params[:password_digest])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  else
    flash[:notice] = "Login is invalid!"
    redirect_to new_session_path
  end
 end


	def destroy
		
  session[:user_id] = nil
  flash[:notice] = "You have been signed out!"
  redirect_to new_session_path
	end
end
