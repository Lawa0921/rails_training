class GoodsController < ApplicationController
  before_action :set_good, only: [:edit, :update, :show, :destroy, :remove_photo]
  before_action :authenticate_admin!

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

  def show
  end

  def edit
  end

  def update
    if @good.update(good_params)
      redirect_to goods_path, notice: '成功更新商品'
    else
      flash[:notice] = "更新商品失敗"
      render :edit
    end
  end

  def destroy
    if @good.destroy
      flash[:notice] = "成功刪除商品"
    else
      flash[:notice] = "刪除商品失敗"
    end
    redirect_to goods_path
  end

  def remove_photo
    @good.photos.each do |photo|
      photo.purge if photo.id == params[:photo_id].to_i
    end
    redirect_to good_path(@good), notice: "已成功刪除圖片"
  end

  private
  def set_good
    @good = Good.find(params[:id])
  end

  def good_params
    params.require(:good).permit(:name, :description, :price, :public, :status, :discount, :number, :size, :color, :inventory, photos: [])
  end
end
