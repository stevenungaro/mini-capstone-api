class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def random_product
    render json: Product.all.sample.as_json
  end

  def productbyid
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end
end
