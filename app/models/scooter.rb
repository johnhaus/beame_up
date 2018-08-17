class Scooter < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :user
  has_one :rent

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :picture, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :global_search,
    against: [ :address ],
    using: {
      tsearch: { prefix: true }
  }
end

