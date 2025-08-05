class CartItemsController < ApplicationController
	def  index
		@cart_items = current_user.cart_items
	end

	def show
		@cart_item = current_user.cart_items.find(params[:id])
		 @product = @cart_item.product
		 @total_amount = total_amount
	end

	def new
		@cart_item = CartItem.new
		
	end

	def total_amount
		@cart_item.quantity*@product.price
	end

	def create
		@cart_item = current_user.cart_items.build(cart_item_params)
		if @cart_item
		  # @cart_item.increment(:quantity , by = 1)
		  @cart_item.quantity =  @cart_item.quantity + 1
		 end
		if @cart_item.save
			redirect_to cart_items_path
		else 
			render :new
		end
	end	

private
def cart_item_params
    params.permit(:quantity, :product_id)
end
end
