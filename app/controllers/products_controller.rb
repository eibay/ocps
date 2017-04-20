class ProductsController < ApplicationController
  def index
    response = HTTParty.get('https://api.myjson.com/bins/gx6vz')
    data = JSON.parse(response.body)
    @products = data["prices"]
  end
end
