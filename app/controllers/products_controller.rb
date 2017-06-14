class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :access_control, except: [:indexx, :show]

  def index
    @q=Product.ransack(params[:q])
    @products=@q.result
  end
  
  def indexx
    @subcategory = Subcategory.find(params[:sub])
   
    @products= @subcategory.products
    puts @products.inspect
  end
  
  def show
    
  end

  def new
    @product = Product.new
    @subcategory=Subcategory.all
    @categories=Category.all
  end

  def edit
     @subcategories=Subcategory.all
    @categories=Category.all
  end


  def create
    @subcategory=Subcategory.find(params[:subcategory_id])
    @product = @subcategory.products.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def find_sub_category
    category =Category.find(params[:category_id])
    @subcategories=category.subcategories
    render :partial => "subcategories", :object => @subcategories 
  end  
  
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :image, :subcategory_id)
    end
end
