class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    render :index
  end

  def create
    current_product = Product.find_by(id: params["product_id"])
    order_quantity = params["quantity"].to_i
    order_subtotal = order_quantity * current_product.price
    order_tax = order_quantity * current_product.tax
    order_total = order_subtotal + order_tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: current_product.id,
      quantity: order_quantity,
      subtotal: order_subtotal,
      tax: order_tax,
      total: order_total,
    )
    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end
end
