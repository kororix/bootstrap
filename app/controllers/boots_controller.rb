class BootsController < ApplicationController
  def index
  end

  def new
    @boot = Boot.new
  end

  def create
    Boot.create(boot_params)
    redirect_to new_boot_path
  end

  private

  def boot_params
  params.require(:boot).permit(:title, :content)
  end
end
