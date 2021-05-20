class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @offices = policy_scope(Office).global_search(params[:query])
    else
      @offices = policy_scope(Office)
    end

    if params[:capacity].present?
      capacity_query = "capacity = :capacity"
      @offices = @offices.where(capacity_query, capacity: params[:capacity].to_i)
    end

    @markers = @offices.geocoded.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { office: office })
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
