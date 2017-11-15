class ReservationsController < ApplicationController
  # skip_before_action :authenticate_user!
  # before_action :set_reservation, only: [ :accept, :decline ]

  def create
    # @reservation = Reservation.new(reservation_params)
    # @reservation.user = current_user
    # @room = Room.find(params[:room_id])
    # @reservation.room = room
    # if @reservation.save
    #   redirect_to reservation_path(@reservation)
    # else
    #   flash[:alert] = "Please provide valid dates. End date should be later that start date."
    #   redirect_to room_path(@room)
    # end
  end


  def accept

  end

  def decline

  end

  private

  def set_reservation
    # @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    # params.require(:reservation).permit(:start_time, :end_time)
  end

end

