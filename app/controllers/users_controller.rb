class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]
  # skip_before_action :authenticate_user!, only: :edit

  def edit
  end

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
    params.require(:user).permit(:first_name, :last_name, :birthday, :cpf, :password, :address, :phone_number,  photos: [])
  end
end
