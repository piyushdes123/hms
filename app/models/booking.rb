class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :room
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :booking_date, presence: true

end
