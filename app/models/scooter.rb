class Scooter < ApplicationRecord
  belongs_to :user
  has_one :rent

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end

