class FoodController < ApplicationController
  def new
  end

  def create
    render plain: params[:food].inspect
  end
end
