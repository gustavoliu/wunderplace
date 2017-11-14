class Reservation < ApplicationRecord
  has_many :reservations
  belongs_to :user
  belongs_to :room
end
