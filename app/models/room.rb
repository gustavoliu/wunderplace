class Room < ApplicationRecord
  has_many :reservations
  belongs_to :user
  monetize :price_cents, as: :price # required by 'money-rails' gem
end
