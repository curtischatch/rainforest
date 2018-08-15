class ProductsController < ApplicationController


  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price_in_cents]

    if @product.save
      redirect_to "/products"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  # def update
  #   @product = Picture.find(params[:id])
  #
  #   @product.name = params[:product][:name]
  #   @product.decsci = params[:product][:description]
  #   @product.url = params[:product][:price_in_cents]
  #
  #   if @product.save
  #     redirect_to "/pictures/#{@picture.id}"
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end

end
