class FoodsController < ApplicationController
  def index
    @foods = Food.all
    render json: @foods
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      render json: @food, status: :created#, location
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  def show
    @food = Food.find(params[:id])
    render json: @food
  end

  private

  def food_params # param 의 list 를 받을 수 있다 ?
    params.require(:food).permit(:stock, :name)
    # params.fetch({}).permit(, food: {})
    # params.permit()
  end
end
