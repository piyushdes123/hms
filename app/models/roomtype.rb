class Roomtype < ApplicationRecord

  has_one_attached :roomimg
  enum :status,[:booked , :opentobook]

  has_many :rooms



end
