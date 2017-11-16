class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reservations
  has_many :rooms
  has_many :reviews
  validates :first_name, :last_name, :birthday, :cpf, :phone_number, :address, :email, presence: true, on: :update
  has_attachment :photo

  def has_photo(photo)
    if
      self.photo != nil
      cl_image_tag(@user.photo.path)
    else
      nil
    end
  end
end
