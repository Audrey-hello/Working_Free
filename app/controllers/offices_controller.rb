class OfficesController < ApplicationController
before_action :set_office, only: [:show, :edit, :update, :destroy]
  def index
        if params[:query].present?
      @query = params[:query]
      @offices = Office.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @offices = Office.all
    end
  end

  def new

  end

  def create

  end

  def show

  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:name, :address, :description, :price, :capacity, :picture_url)
  end
end

end
