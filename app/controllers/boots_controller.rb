class BootsController < ApplicationController
  def index
    @boot = Boot.all
  end

  def new
    @boot = Boot.new
  end

  def create
    @boot = Boot.new(boot_params)
    if @boot.save
      redirect_to new_boots_path, notice: "ブログを作成しました！"
    else
      render 'new'
    end
  end

  def show
    @boot = Boot.find(params[:id])
  end

  private

  def boot_params
  params.require(:boot).permit(:title, :content)
  end
end
