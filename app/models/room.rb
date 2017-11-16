class Room < ApplicationRecord
  # Check: https://stackoverflow.com/a/10467096
  self.inheritance_column = nil

  has_many :reservations
  belongs_to :user
  has_attachments :photos, maximum: 3
  monetize :price_centavos, as: :price # required by 'money-rails' gem

  def photo_active(photo)
    photo == self.photos.first ? "active" : ""
  end
end
