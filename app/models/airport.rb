class Airport < ApplicationRecord
  validates :code, presence: true, uniqueness: true

  has_many :arriving_flights,
           class_name: Flight.name,
           foreign_key: :arrival_airport_id,
           dependent: :destroy
  has_many :departing_flights,
           class_name: Flight.name,
           foreign_key: :departure_airport_id,
           dependent: :destroy
end
