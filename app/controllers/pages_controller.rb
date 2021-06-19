class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home
  end

  def dashboard
    @offices = current_user.offices
    @bookings = current_user.bookings
    @requests = current_user.requests
  end

  def destroy
  @office = Office.find(params[:id])
  @offices = Offices.find(params[:id])
  @offices.destroy
  redirect_to dashboard_path
  end

end
