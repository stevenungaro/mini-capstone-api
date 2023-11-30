class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    order_subtotal = 0
    carted_products.each do |carted_product|
      order_subtotal += carted_product.product.price.to_f * carted_product.quantity.to_f
    end
    order_tax = order_subtotal * 0.09
    order_total = order_subtotal + order_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: order_subtotal,
      tax: order_tax,
      total: order_total,
    )
    if @order.save #happy path
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
    else #sad path
      render json: { errors: @order.errors.full_message }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end
end
