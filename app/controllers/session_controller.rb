class SessionController < ApplicationController

  skip_before_action :auhenticate_user, only: [:create, :new]

	def new
		
	end
	
	def create
    # session_params = params.permit(:email, :password)
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])

      session[:user_id] = @user.id
      if @user.type == "Seller"
      redirect_to new_store_path
      else
      redirect_to stores_path
      end
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
