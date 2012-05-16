class StoresController < ApplicationController

  def index 
    @products = Product.find_products_for_sale 
  end
  
  def find_cart
    unless session[:cart] # if there's no cart in the session
    session[:cart] = Cart.new # add a new one
    end
    session[:cart] # return existing or new cart
  end
  
  def add_to_cart
     @cart = find_cart
     product = Product.find(params[:id])
     @cart.add_product(product)
  end
end
