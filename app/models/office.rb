class Office < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :capacity, presence:true, numericality: { only_integer: true }
  validates :title, :price, :address, :description, presence: true

  include PgSearch::Model
    pg_search_scope :global_search,
      against: [ :address, :description, :title ],
      using: {
        tsearch: { any_word: true }
      }

end
