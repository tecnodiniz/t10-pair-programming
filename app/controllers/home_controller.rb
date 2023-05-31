class HomeController < ActionController::Base
    def index 
        @products = Product.all
    end
end