class RoomsController < ApplicationController
  before_action :set_room, only: [ :edit, :update]
  skip_before_action :authenticate_user!

  def home
  end

  def index
    @rooms = Room.all

    # if params[:when].present?
    #   @rooms = @rooms.where(...)
    # end

    if params[:type].present?
      @rooms = @rooms.where(type: params[:type])
    end

    if params[:address].present?
      @rooms = @rooms.near(params[:address], 10)
    end

    @hash = Gmaps4rails.build_markers(@rooms) do |room, marker|
      marker.lat room.latitude
      marker.lng room.longitude
      # marker.infowindow render_to_string(partial: "/rooms/map_box", locals: { room: room })
    end
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    @reviews = @room.reservations.map{ |r| r.reviews }.flatten
    @alert_message = "você está vendo #{@room.name}"
    @room_coordinates = { lat: @room.latitude, lng: @room.longitude }
    @hash = Gmaps4rails.build_markers(@room) do |room, marker|
      marker.lat room.latitude
      marker.lng room.longitude
      # marker.infowindow render_to_string(partial: "/rooms/map_box", locals: { room: room })
    end
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      redirect_to edit_room_path(@room)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to room_path(@room)
    else
      render :edit
    end
  end


  def destroy
  end

  def search
  end


  private

  def room_params
    params.require(:room).permit(:address, :type, :description, :name, :price, :published, :air_conditioning, :secretary, :psychology_couch, :cleaning, :smoking_allowed, photos: [])
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
