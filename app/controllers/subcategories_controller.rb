class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :access_control, except: [:sub_index]

  def index
    @subcategories = Subcategory.all
    @categories=Category.all
  end

  def sub_index
    @category=Category.find(params[:category])
    @subcategories = @category.subcategories
  end  
  
  def new
    @subcategory = Subcategory.new
    @categories=Category.all
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully created.' }
        format.json { render :show, status: :created, location: @subcategory }
      else
        format.html { render :new }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategory }
      else
        format.html { render :edit }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to subcategories_url, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit(:name, :image, :category_id, :product_id)
  end
end