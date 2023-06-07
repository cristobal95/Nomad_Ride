class CaravansController < ApplicationController
  before_action :set_caravan, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @caravans = Caravan.all
  end

  def destroy
    @caravan.destroy
    redirect_to root_path, status: :see_other
  end

  def new
    @caravan = Caravan.new
    @caravan.user_id = current_user.id
  end

  def create
    @caravan = Caravan.new(caravan_params)
    @caravan.user_id = current_user.id
    if @caravan.save
      redirect_to root_path
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
    redirect_to caravan_path
  end


  private

  def set_caravan
    @caravan = Caravan.find(params[:id])
  end

  def caravan_params
    params.require(:caravan).permit(:brand, :year, :model, :capacity, :gas_type, :description, :user_id, :address, :photo)
  end

end
