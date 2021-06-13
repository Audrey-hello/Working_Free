class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def dashboard
    @offices = current_user.offices
    @bookings = current_user.bookings
    @requests = current_user.requests
  end

  def destroy
    @offices = Offices.find(params[:id])
    @offices.destroy
    redirect_to offices_path
  end

end
