class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home

  end

  def dashboard
    @offices = Office.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end




end
