class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode 

  validates :name, presence: true, length: { minimum: 3, too_short: "must be at least %{count} characters long" }
  validates :address, presence: true
  validates :description, presence: true
end
