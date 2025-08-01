class SessionController < ApplicationController
	# skip_before_action :require_login, only: [:create, :new]

  skip_before_action :auhenticate_user, only: [:create, :new]

	def new
		
	end
	
	def create
    # session_params = params.permit(:email, :password)
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])

      session[:user_id] = @user.id
      redirect_to stores_path
    else
      flash[:alert] = "Login is invalid!"
      redirect_to new_session_path
    end

  end

    
  def destroy
    # session[:user_id] = nil
    session.delete :user_id
    flash[:alert] = "You have been signed out!"
    redirect_to new_session_path
  end
end
