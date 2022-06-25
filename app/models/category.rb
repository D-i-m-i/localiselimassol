class Category < ApplicationRecord
  validates :name, presence: true
  has_many :laptop_cafes
  has_many :foodie_places
  has_many :local_experiences
  has_many :annual_events
end
