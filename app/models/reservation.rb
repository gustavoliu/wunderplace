class Reservation < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :room
end
