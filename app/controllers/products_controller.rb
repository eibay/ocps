class ProductsController < ApplicationController
  
  before_action :get_pricelist, only: [:index]
  
  def index
    @products
  end

  def show
    find_item(name)
  end

  private
    def get_pricelist
      response = HTTParty.get('https://api.myjson.com/bins/gx6vz')
      data = JSON.parse(response.body)
      @products = data["prices"]
    end
    def find_item(name)
      @product = @products[name]
    end
end
