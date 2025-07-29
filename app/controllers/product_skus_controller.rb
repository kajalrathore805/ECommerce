class ProductSkusController < ApplicationController
	def index
		@product_skus = ProductSku.all
	end

	def show
		@product_sku = ProductSku.find(params[:id])
	end

	def new
		@product_sku = ProductSku.new
	end	

	def create

		@product_sku = ProductSku.new(product_sku_params)
		# byebug
		if @product_sku.save
			redirect_to @product_sku
		else 
			render :new
		end
	end	

	def edit
		@product_sku = ProductSku.find(params[:id])
	end

	def update
		@product_sku = ProductSku.find(params[:id])
		if @product_sku.update(product_sku_params)
			redirect_to (@product_sku)
		else
			render :edit
		end
	end

	def destroy
		@product_sku = ProductSku.find(params[:id])
		@product_sku.destroy

		redirect_to @product_sku
	end

	private
  def product_sku_params
    params.require(:product_sku).permit(:size, :sku_code, :product_variation_id)
  end
end
