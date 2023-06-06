class CaravansController < ApplicationController
  before_action :set_caravan, only: %i[show edit update destroy]


  def index
    @caravans = Caravan.all
  end

  def destroy
    @caravan.destroy
    redirect_to root_path, status: :see_other
  end

  def new
    @caravan = Caravan.new
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
    params.require(:caravan).permit(:brand, :year, :model, :capacity, :gas_type, :description, :user_id, :photo)
  end

end
