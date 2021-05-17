class OfficesController < ApplicationController
before_action :set_office, only: [:show, :destroy]
  def index
    @offices = Office.all
  end

  def new
    @office = Office.new
  end

  def create
     @office = Office.new(office_params)
    if @office.save
      redirect_to office_path(@office)
    else
      render :new
    end
  end

  def show
   @bookings = Booking.new
   @office = Office.new(office: @office)
  end

  def set_office
    @office = Office.find(params[:id])
  end
end
