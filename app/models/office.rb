class Office < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates_numericality_of :capacity, less_than: ->(office) { office.capacity }
end
