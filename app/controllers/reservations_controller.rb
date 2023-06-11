class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.all
    @user = current_user
  end

  def show
    @reservation = Reservation.find(params[:id])
    # @caravan = Caravan.find(:caravan_id)
    # @markers = [
    #   {
    #     lat: @caravan.latitude,
    #     lng: @caravan.longitude,
    #     info_window_html: render_to_string(partial: "info_window", locals: { caravan: @caravan }),
    #     marker_html: render_to_string(partial: "marker", locals: { caravan: @caravan })
    #   }
    # ]
  end

  def new
    @reservation = Reservation.new
    @caravan = Caravan.find(params[:caravan_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.caravan = Caravan.find(params[:caravan_id])
    if @reservation.save
      redirect_to reservations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end


  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path, status: :see_other
  end

  def change_status
    @reservation = Reservation.find(params[:id])
    if @reservation.status == false
      @reservation.status = true
      @reservation.save
      redirect_to requests_path
    else
      @reservation.status = false
      @reservation.save
      redirect_to requests_path
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :finish_date, :user_id, :caravan_id, :status, :total_price)
  end
end
