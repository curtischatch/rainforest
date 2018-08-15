class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "You've successfully created a new product."
      redirect_to "/products"

    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to product_url(@product.id)
      flash[:notice] = "You've successfully updated a product."
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "You've successfully deleted a product."
    redirect_to "/products"
  end

end
