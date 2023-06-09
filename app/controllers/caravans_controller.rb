class CaravansController < ApplicationController
  before_action :set_caravan, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]


  def index
    @caravans = Caravan.all
    if params[:query].present?
      @caravans = @caravans.search_by_model_brand(params[:query])
    end
  end


  def destroy
    @caravan.destroy
    redirect_to mycaravans_path, status: :see_other
  end


  def new
    @caravan = Caravan.new
    @caravan.user_id = current_user.id
  end

  def create
    @caravan = Caravan.new(caravan_params)
    @caravan.user_id = current_user.id
    if @caravan.save
      redirect_to mycaravans_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @caravan = Caravan.find(params[:id])
    # The `geocoded` scope filters only flats with coordinates
    #@markers = @caravan.geocoded.map do |caravan|
    @markers = [
      {
        lat: @caravan.latitude,
        lng: @caravan.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { caravan: @caravan }),
        marker_html: render_to_string(partial: "marker", locals: { caravan: @caravan })
      }
    ]
    #end
  end

  def edit
  end

  def update
    @caravan.update(caravan_params)
    redirect_to mycaravans_path
  end

  def mycaravans
    if user_signed_in?
      @caravans = Caravan.all
      @caravans = @caravans.select{ |caravan| caravan.user_id == current_user.id }
    end
  end

  def showrequests
    if user_signed_in?
      @reservations = Reservation.all
      @caravan = Caravan.find(params[:caravan_id])
      @reservations = @reservations.select { |reservation| reservation.caravan_id == current_user.id }
    end
  end

  def requests
    if user_signed_in?
      @reservations = Reservation.all
      @reservations = @reservations.select { |reservation| reservation.caravan.user.id == current_user.id }
    end
  end


  private

  def set_caravan
    @caravan = Caravan.find(params[:id])
  end

  def caravan_params
    params.require(:caravan).permit(:brand, :year, :model, :capacity, :gas_type, :description, :user_id, :address, :photo, :day_price)
  end

end
