class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @booking
    redirect_to booking_path(@booking)
    unless @booking.after_save redirect_to user_path(@booking.office)
  end

  def new
    @booking = Booking.new
  end

  def edit

  end

  def update

  end

  private

  def bookmark_params
  params.require(:booking.permit(:start_date, :end_date)
  end

end

