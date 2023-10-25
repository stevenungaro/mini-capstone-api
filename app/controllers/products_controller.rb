class ProductsController < ApplicationController
  def all_products
    render json: Product.all.as_json
  end

  def random_product
    render json: Product.all.sample.as_json
  end

  def productbyid
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
