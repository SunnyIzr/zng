class ProductsController < ApplicationController
  def query
  end
  def index
    @colors = params['colors'] == nil ? nil : params['colors'].keys
    @patterns = params['pattern'] == nil ? nil : params['pattern'].keys
  end
end
