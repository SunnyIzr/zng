class ProductsController < ApplicationController
  def query
  end
  def index
    colors = params['color'] == nil ? nil : params['color'].keys
    patterns = params['pattern'] == nil ? nil : params['pattern'].keys
    @products = Product.filter_products(colors,patterns)
  end
end
