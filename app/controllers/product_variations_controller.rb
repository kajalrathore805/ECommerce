class ProductVariationsController < ApplicationController
	def index
		@product_variations = ProductVariation.all
	end

	def show
		@product_variation = ProductVariation.find(params[:id])
	end

	def new
		@product_variation = ProductVariation.new
	end	

	def create

		@product_variation = ProductVariation.new(product_variation_params)
		# byebug
		if @product_variation.save
			redirect_to @product_variation
		else 
			render :new
		end
	end	

	def edit
		@product_variation = ProductVariation.find(params[:id])
	end

	def update
		@product_variation = ProductVariation.find(params[:id])
		if @product_variation.update(product_variation_params)
			redirect_to (@product_variation)
		else
			render :edit
		end
	end

	def destroy
		@product_variation = ProductVariation.find(params[:id])
		@product_variation.destroy

		redirect_to @products_variation
	end

	private
  def product_variation_params
    params.require(:product_variation).permit(:color, :product_id)
  end
end
