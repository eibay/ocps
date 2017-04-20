class ProductsController < ApplicationController
  
  before_action :get_pricelist, only: [:index]
  
  def index
    @products
  end

  private
    def get_pricelist
      response = HTTParty.get('https://api.myjson.com/bins/gx6vz')
      data = JSON.parse(response.body)
      @products = data["prices"]
    end
end
