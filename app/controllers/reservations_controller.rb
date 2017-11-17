class ReservationsController < ApplicationController
  # skip_before_action :authenticate_user!
  # before_action :set_reservation, only: [ :accept, :decline ]
  def new
    @room = Room.find(params[:room_id])
  end

  def create
    timeslots = []
    params.keys.each { |key| timeslots.push(key) if key.start_with?('timeslot_') }
    timeslots.each do |timeslot|
      reservation = Reservation.new
      reservation.room_id = params[:room_id]
      reservation.date = Date.parse(params[:date])
      reservation.user_id = current_user.id
      reservation.timeslot = params[timeslot]
      reservation.save
    end
    redirect_to room_path(Room.find(params[:room_id]))
    # room_id
    # date => dd/mm/yy => Date.parse(params[:date])
    # current_user.id => user_id

    # [b, b, "timeslot_9", "timeslot_10"]
    # timeslots => ["timeslot_9", "timeslot_10"]
    # current_user.id => user_id
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

  # def reservation_params
  #   params.require(:reservation).permit(:date, :timeslot)
  # end

end

