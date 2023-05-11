class Roomtype < ApplicationRecord

  has_one_attached :roomimg
  enum :status,[:booked , :opentobook]

  has_many :rooms , dependent: :destroy

  validates :roomtype, presence: true
  validates :cost, presence: true
  validates :description, presence: true



end 
