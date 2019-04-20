class ReviewsController < ApplicationController
  def new
    @pizza = Pizza.find(params[:pizza_id])
    @review = Review.new
  end

  def create
    Review.create(create_params)
    redirect_to controller: :pizzas, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(pizza_id:  params[:pizza_id], user_id: current_user.id)
  end
end


 
