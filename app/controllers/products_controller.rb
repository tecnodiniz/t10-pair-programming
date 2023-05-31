class ProductsController < ActionController::Base
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(params.require(:product).permit(:name, :weight,:height,:code))
        if @product.save
            return redirect_to root_path
        else
            render :new
        end
    end
end