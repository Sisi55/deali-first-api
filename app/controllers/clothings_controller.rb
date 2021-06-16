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
    params.require(:clothing).permit(:stock, :name, :itemType) # ? 된다. 근데 함수의 의미를 잘 모르겠다. clothing unpermit 상태라는 경고 문구 출력됐다
    # permit! 에서 self 한다
  end
end
