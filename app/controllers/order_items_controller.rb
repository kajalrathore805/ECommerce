class OrderItemsController < ApplicationController
 
def index
  @order = current_user.orders.find(params[:order_id])
  @order_items = @order.order_items.includes(:product)
end

  def show
  @order_item = OrderItem.find(params[:id])
  # unless @order_item.order.user == current_user
    # redirect_to root_path, alert: "Unauthorized access"
  end
end

