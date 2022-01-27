class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to product_url(@product), notice: "Product was successfully created."
        else
            render :new, status: :unprocessable_entity
        end

    end
    

    def update

        @product = Product.find(params[:id])

        if @product.update(product_params)
            redirect_to product_url(@product), notice: "Product was successfully updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path, status: :see_other
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :long_text, :short_text, :youtube_url)
    end

end
