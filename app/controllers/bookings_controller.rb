class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @office
    @booking.office = @office
    redirect_to #SHOW DE OFFICE
  end

  def new
    @booking = Booking.new
    authorize @office
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
