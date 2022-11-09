class BookingType < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, presence: true, length: {maximum: 100}
  validates :category, :location, presence: true
  
end
