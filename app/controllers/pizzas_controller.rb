class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.order('id ASC').limit(15)
  end

  def show
    @pizzas = Pizza.find(params[:id])
  end
end
