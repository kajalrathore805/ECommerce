class CartItemsController < ApplicationController
	def  index
		@cart_items = CartItem.all
	end

	def show
		@cart_item = CartItem.find(params[:id])
	end

	def new
		@cart_item = CartItem.new
		@products = Product.all
	end

	def create
		@cart_item = CartItem.new(cart_item_params)
		if @cart_item.save
			redirect_to cart_items_path
		else 
			render :new
		end
	end	

private
def cart_item_params
    params.require(:cart_item).permit(:quantity, :buyer_id, :product_id)
end
end
