class ProductsController < ApplicationController
    def index
        # cart -- don't need to specify this here for index, since it's a helper method in the ApplicationController, we can call it in the index view file itself!!!
    end

    def add
        # method: post specified in index view form
        @product = params[:product]
        cart << @product
        redirect_to root_path
    end
end