class PassengerMailer < ApplicationMailer
  def confirmation_email
    @booking = Booking.find(params[:booking_id])

    mail(to: @booking.passengers.pluck(:email),
         subject: "Thank you for booking Flight #{@booking.flight.id}!")
  end
end
