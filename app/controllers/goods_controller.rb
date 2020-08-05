class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(good_params)
    if @good.save
      redirect_to goods_path, notice: '成功新增商品'
    else
      flash[:notice] = "新增商品失敗"
      render :new
    end
  end

  private
  def set_good
    @good = Good.find(params[:id])
  end

  def good_params
    params.require(:good).permit(:name, :description, :price, :public, :status, :discount)
  end
end
