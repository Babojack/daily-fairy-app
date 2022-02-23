class FairiesController < ApplicationController
  before_action :set_fairy, only: :show
  def index
    @fairies = Fairy.all
  end

  def show
  end

  def new
    @fairy = Fairy.new
  end

  def create
    @fairy = Fairy.create(fairy_params)
    if @fairy.save
      redirect_to fairy_path(fairy)
    else
      render "new"
    end
  end

  private

  def fairy_params
    params.require(:fiaries).permit(:name, :super_power, :description, :price, :user)
  end

  def set_fairy
    @fairy = Fairy.find(params[:id])
  end
end
