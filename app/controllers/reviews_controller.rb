class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    # @product = Product.find(params[:product_id])
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]


    if @review.save
      flash[:notice] = "You've successfully created a new review."
      redirect_to "/products/#{params[:id]}"

    else
      redirect_to "/products/#{params[:id]}"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "You've successfully deleted a review."
    redirect_to "/products"
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])

  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_url(@review.product_id)
      flash[:notice] = "You've successfully updated a review."
    else
      render :_form
    end
  end


end
