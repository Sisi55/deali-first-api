class ClothingsController < ApplicationController
  def index
    @clothings = Clothing.all
    render json: @clothings
  end

  def show
    @clothing = Clothing.find(params[:id])
    render json: @clothing
  end

  def create
    @clothing = Clothing.new(clothing_params)
    if @clothing.save
      render json: @clothing, status: :created
    else
      render json: @clothing.errors, status: :unprocessable_entity
    end
  end

  private

  def clothing_params
    params.permit(:stock, :name) # ?
  end
end
