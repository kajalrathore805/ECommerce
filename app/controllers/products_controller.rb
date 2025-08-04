class ProductsController < ApplicationController
	skip_before_action :auhenticate_user, only: [:index]
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	if @current_user == "Seller"
		def new 
			@product = Product.new
		end	
	end
	
	def create

		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else 
			render :new
		end
	end	

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to (@product)
		else
			render :edit
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end

	private
  def product_params
    params.require(:product).permit(:name, :description, :price , :store_id)
  end
end
