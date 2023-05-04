class Room < ApplicationRecord
  belongs_to :roomtype

  enum :status, [:available , :unavailable]
  has_one :booking
end
