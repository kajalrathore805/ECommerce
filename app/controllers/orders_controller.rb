class OrdersController < ApplicationController
  def new
    @cart_items = current_user.cart_items.includes(:product)
    @total_price = @cart_items.sum { |item| item.quantity * item.product.price }
  end

  def create
  cart_items = current_user.cart_items.includes(:product)
  total = cart_items.sum { |item| item.quantity * item.product.price }

  @order = current_user.orders.build(
    address: params[:address], 
    total_price: total,
    status: "pending"
  )

  if @order.save
    cart_items.each do |item|
      @order.order_items.create(
        product: item.product,
        quantity: item.quantity,
        price: item.product.price
      )
    end

    cart_items.destroy_all

    redirect_to order_path(@order), notice: "Order placed successfully!"
  else
    render :new
  end
end


  def show
  @order = current_user.orders.find(params[:id])
end
end
