class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @fairy = Fairy.find(params[:fairy_id])
  end

  def create
    @booking = Booking.new(booking_params)

    # then we need to set the booking's user_id and workspace_id
    @booking.user = current_user

    @fairy = Fairy.find(params[:fairy_id])
    @booking.fairy = @fairy

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
