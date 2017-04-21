class ProductsController < ApplicationController
  before_action :get_pricelist, only: [:index, :show]
  
  def index
    @products
  end

  def show
    find_item(params[:data_value].to_i)
    @product
  end

  private
    def get_pricelist
      response = HTTParty.get('https://api.myjson.com/bins/gx6vz')
      data = JSON.parse(response.body)
      @products = data["prices"]
    end
    def find_item(id)
      @product = @products[id]
    end
end
