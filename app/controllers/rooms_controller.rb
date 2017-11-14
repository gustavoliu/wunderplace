class RoomsController < ApplicationController
  before_action :set_room, only: [ :edit, :update]
  #skip_before_action terá alguma para autenticar usuário?

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = room.find(params[:id])
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      redirect_to room_path(@room)
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
    params.require(:room).permit(:address, :type, :photos, :description, :name, :published, :user_id, :published, :created_at, :updated_at, :air_conditioning, :secretary, :psychology_couch, :cleaning, :smoking_allowed)
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
