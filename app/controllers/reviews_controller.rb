class ReviewsController < ApplicationController

  before_filter :check_privileges!

  def create
    @product = Product.find(params[:product_id])
    @review = @product.review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to '/'
    else
      redirect_to :back
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
