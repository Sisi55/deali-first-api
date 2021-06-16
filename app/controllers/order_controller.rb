class OrderController < ApplicationController
  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    # order_params_contact_info
    @order = Order.new
    # 비회원 정보 생성. [광우님 설명하신 안티패턴 개선]
    # build method 가 없다고 오류뜬다
    @order.user_info.build(
      contactEmail: params[:contactInfo][:contactEmail],
      contactName: params[:contactInfo][:contactName],
      mobile: params[:contactInfo][:mobile]
    )
    # @user_info.save # 저장은 잘 된다
    # render json: @user_info.error, status: :unprocessable_entity if not @user_info.save

    # p @user_info

    # @order.user_info = @user_info # user_info_id 가 unknown attribute 라고 한다
    @order.product = Product.find_by(
      itemType: params[:items][:itemType],
      id: params[:items][:id].to_i
    )
    if @order.save
      render json: @order, status: :created
    else
      render json: @order.error, status: :unprocessable_entity
    end
  end

  # private

  # def order_params_contact_info
  #   params.permit(
  #     {contactInfo: [:contactEmail, :contactName, :mobile] }
  #   )
  # end
end
