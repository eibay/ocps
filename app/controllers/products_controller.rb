class ProductsController < ApplicationController
  def index
    pricelist = HTTParty.get('https://api.myjson.com/bins/gx6vz')
    @products = JSON.parse(pricelist.body)
  end
end
