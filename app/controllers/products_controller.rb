class ProductsController < ApplicationController
	skip_before_action :auhenticate_user, only: [:index]
	def index
	  if @current_user&.type == "Buyer"
			@products = Product.all
		else
		 @products = current_user.products
		end
	end

	def show
		@product = current_user.products.find(params[:id])
	end
	
		def new 
			@product = Product.new
		end	
	
	def create

		@product = current_user.products.build(product_params)

		if @product.save
			redirect_to @product
		else 
			render :new
		end
	end	

	def edit
		@product = current_user.products.find(params[:id])
	end

	def update
		@product = current_user.products.find(params[:id])
		if @product.update(product_params)
			redirect_to (@product)
		else
			render :edit
		end
	end

	def destroy
		@product = current_user.products.find(params[:id])
		@product.destroy

		redirect_to products_path
	end

	private
  def product_params
    params.require(:product).permit(:name, :description, :price , :store_id)
  end
end
