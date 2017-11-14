class Room < ApplicationRecord
  # Check: https://stackoverflow.com/a/10467096
  self.inheritance_column = nil

  has_many :reservations
  belongs_to :user
end
