class Office < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :capacity, numericality: { only_integer: true }
  validates :title, :price, :address, :description, presence: true
end
