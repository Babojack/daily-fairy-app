class FairiesController < ApplicationController
  before_action :set_fairy, only: :show
  def index
    @fairies = Fairy.all
  end

  def show
  end

  private

  def fairy_params
    params.require(:fiaries).permit(:name, :super_power, :description, :price, :user)
  end

  def set_fairy
    @fairy = Fairy.find(params[:id])
  end
end
