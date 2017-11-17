class Room < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  # Check: https://stackoverflow.com/a/10467096
  self.inheritance_column = nil

  has_many :reservations
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_attachments :photos, maximum: 3
  monetize :price_centavos, as: :price # required by 'money-rails' gem

  validates :address, :type,  presence: true

  def photo_active(photo)
    photo == self.photos.first ? "active" : ""
  end
end
