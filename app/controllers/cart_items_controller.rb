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
  product_id = params[:product_id]
  quantity = params[:quantity] || 1

  @cart_item = current_user.cart_items.find_by(product_id: product_id)

  if @cart_item
    @cart_item.increment!(:quantity, quantity.to_i)
  else
    @cart_item = current_user.cart_items.build(cart_item_params)
    unless @cart_item.save
      render :new and return
    end
  end
  redirect_to cart_items_path
end

	

def destroy
		@cart_item = CartItem.find(params[:id])
		@cart_item.destroy

		redirect_to cart_items_path
	end

private
def cart_item_params
    params.permit(:quantity, :product_id)
end
end
