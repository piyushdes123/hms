class Room < ApplicationRecord

  validates :roomnumber, uniqueness:true 
  belongs_to :roomtype 

  enum :status, [:available , :unavailable]
  # has_one :booking



  # belongs_to :customer

has_many :bookings ,dependent: :destroy
has_many :customers, through: :bookings

end
