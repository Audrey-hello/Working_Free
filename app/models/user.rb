class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offices, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :requests, through: :offices, source: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

end
