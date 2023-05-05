class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_one_attached :id_proof
has_one_attached :address_proof
has_one_attached :profile_image
# has_many :bookings
# has_many :rooms
has_many :bookings
has_many :rooms, through: :bookings

end
