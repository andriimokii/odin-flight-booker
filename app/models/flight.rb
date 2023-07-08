class Flight < ApplicationRecord
  validates :start, :duration, presence: true

  belongs_to :departure_airport, class_name: Airport.name, required: true
  belongs_to :arrival_airport, class_name: Airport.name, required: true
end
