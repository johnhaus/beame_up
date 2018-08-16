class Scooter < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :user
  has_one :rent

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :picture, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

