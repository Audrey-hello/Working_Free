class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @office = Office.find(params[:office_id])
    @booking.office = @office
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to office_path(@office), notice: "Your booking is confirmed!"

    else
     redirect_to office_path(@office)
    end
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
