class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show]
  skip_before_action :authenticate_user!, only: :show

  def edit
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Obrigado por se cadastrar!'
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :cpf, :password, :address, :phone_number, :photo)
  end
end
