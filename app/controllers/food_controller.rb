class FoodController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
  end

  def create
    @food = Food.new(food_params)
 
    if @food.save
      redirect_to @food
    else
      render 'new'
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  private
    def food_params
      params.require(:food).permit(:name, :description, :price)
    end
end

