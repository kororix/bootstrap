class BootsController < ApplicationController
  before_action :set_boot, only: [:show, :edit, :update, :destroy]

  def index
    @boots = Boot.all
  end

  def new
    @boot = Boot.new
  end

  def create
    @boot = Boot.new(boot_params)
    if @boot.save
      redirect_to boots_path, notice: "ブログを作成しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @boot.update(boot_params)
      redirect_to boots_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @boot.destroy
    redirect_to boots_path, notice:"ブログを削除しました！"
  end


  private

  def boot_params
    params.require(:boot).permit(:title, :content)
  end

  def set_boot
    @boot = Boot.find(params[:id])
  end
end
