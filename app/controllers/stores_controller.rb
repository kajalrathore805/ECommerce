class StoresController < ApplicationController
	skip_before_action :auhenticate_user, only: [:index]
	def index
		if @current_user&.type == "Buyer"
		 @stores = Store.all
		else
		@stores = current_user.stores
	  end
	end

	def show
		@store = current_user.stores.find(params[:id])
		 @products = @store.products
	end

	def new
		@store = Store.new
	end

	def create
		@store = current_user.stores.build(store_params)

		if @store.save
			redirect_to @store
		else 
			render :new
		end
	end

	def edit
		@store = current_user.stores.find(params[:id])
	end

	def update
		@store = current_user.stores.find(params[:id])
		if @store.update(store_params)
			redirect_to (@store)
		else
			render :edit
		end
	end

	def destroy
		@store = current_user.stores.find(params[:id])
		@store.destroy

		redirect_to stores_path
	end

	private
  def store_params
    params.require(:store).permit(:name,:description,:seller_id)
  end
end
