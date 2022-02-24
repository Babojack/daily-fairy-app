class FairiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_action :set_fairy, only: :show
  def index
    if params[:query].present?
      @fairies = Fairy.search_by_name_and_superpower_description(params[:query])
    else
      @fairies = Fairy.all
    end
  end

  def show
  end

  def new
    @fairy = Fairy.new
  end

  def create
    @fairy = Fairy.create(fairy_params)
    if @fairy.save
      # The notice will notify us the action has been performed
      redirect_to fairy_path(fairy), notice: "Student has been created successfully"
    else
      render "new"
    end
  end

  private

  def fairy_params
    params.require(:fiaries).permit(:name, :super_power, :description, :price, :user, :photo)
  end

  def set_fairy
    @fairy = Fairy.find(params[:id])
  end
end
