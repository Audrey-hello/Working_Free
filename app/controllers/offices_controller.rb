class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @offices = Office.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @offices = policy_scope(Office).order(created_at: :desc)
    end

    @offices = Office.all
    @markers = @offices.geocoded.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude
      }
    end
  end

  def new
    @office = Office.new
    authorize @office
  end

  def create
    @office = Office.new(office_params)
    authorize @office
    @office.user = current_user
    if @office.save
      redirect_to office_path(@office)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    authorize @office
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:title, :name, :address, :description, :price, :capacity, photos: [])
  end
end
