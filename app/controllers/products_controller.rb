class ProductsController < ApplicationController
  def query
  end
  def index
    render json: params
  end
end
