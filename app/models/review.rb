class Review < ApplicationRecord
  belongs_to :reservation
  validates :content, length: { minimum: 20 }
end
