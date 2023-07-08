class PassengerBooking < ApplicationRecord
  belongs_to :booking, required: true
  belongs_to :passenger, required: true
end
