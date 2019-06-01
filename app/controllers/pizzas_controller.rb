class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])  
    @reviews = @pizza.reviews.includes(:user).order('created_at DESC')
    @review = Review.new
  end



private
  def pizza_params
    params.permit(:image, :menu)
  end
end
