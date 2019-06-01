class ReviewsController < ApplicationController
  def create
    @review = Review.create(create_params)
    redirect_to pizza_path(params[:pizza_id])
  end

  private
  def create_params
    params.require(:review).permit(:text).merge(pizza_id: params[:pizza_id], user_id: current_user.id)
  end
end
