class CaravansController < ApplicationController

  def index
    @caravans = Caravan.all
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
    @caravan = Caravan.find(params[:id])
  end

  private

  def caravan_params
    params.require(:caravan).permit(:brand, :year, :model, :capacity, :gas_type, :description, :user_id)
  end

  def edit
  end

  def update
  end

end
