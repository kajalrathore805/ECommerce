class UsersController < ApplicationController
	skip_before_action :require_login, only: [:new, :create]

	def index
		@users = User.all
	end

	def show
	 @user = User.find(params[:id])
	# user=User.find_by(id: session[:user_id])
	end

	def new
		@user = User.new
	end	

	def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Error- please try to create an account again."
      redirect_to new_user_path
    end
  end	

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)

			redirect_to user_path
		else
			render :edit
		end
	end

	def destroy
		
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
  def user_params
    params.require(:user).permit(:type , :full_name , :email ,:password_digest , :phone , :image)
  end
end
