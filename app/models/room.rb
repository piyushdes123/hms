class Room < ApplicationRecord
  belongs_to :roomtype

  enum :status, [:available , :unavailable]
  has_one :booking

  # belongs_to :customer

has_many :bookings
has_many :customers, through: :bookings

end
