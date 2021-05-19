class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @office = Office.find(params[:office_id])
    @booking.office = @office
    @booking.save
    redirect_to office_path(@office)
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
