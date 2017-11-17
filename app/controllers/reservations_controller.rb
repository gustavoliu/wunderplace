class ReservationsController < ApplicationController
  # skip_before_action :authenticate_user!
  # before_action :set_reservation, only: [ :accept, :decline ]
  def new
    @room = Room.find(params[:room_id])
  end

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

  def find_by_date(room_id, date) # returns array of reservations of a room in given date
    result = []
    Reservation.all.each do |reservation|
      result << reservation if reservation.date == date
    end
    result
  end

  def available_hours(date)

  end

  private

  def set_reservation
    # @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :timeslot)
  end

end

