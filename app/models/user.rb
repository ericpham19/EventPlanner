class User < ApplicationRecord
  has_secure_password
  has_person_name
  validates :email, presence: true, format: { with: /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/, message: "Please try a valid email name" }
  validates :first_name, :last_name , presence: true
  has_many  :bookings
end
