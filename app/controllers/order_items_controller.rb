class OrderItemsController < ApplicationController
	def index
		@order_items = OrderItem.all
	end

	def show
		@order_item = OrderItem.find(params[:id])
	end

	def new
		@order_item = OrderItem.new
	end

	def create
		@order_item = OrderItem.new(order_item_params)

		if @order_item.save
			redirect_to @order_item
		else 
			render :new
		end
	end

	def edit
		@order_item = OrderItem.find(params[:id])
	end

	def update
		@order_item = OrderItem.find(params[:id])
		if @order_item.update(order_item_params)
			redirect_to (@order_item)
		else
			render :edit
		end
	end

	def destroy
		@order_item = OrderItem.find(params[:id])
		@order_item.destroy

		redirect_to order_items_path
	end

	private
  def order_item_params
    params.require(:order_item).permit(:quantity,:price, :total_amount ,:order_id,:product_id)
  end
end
