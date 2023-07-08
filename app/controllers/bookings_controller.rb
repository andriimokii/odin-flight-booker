class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passengers_count].to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:booking_option])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking has been successfully created!'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking)
          .permit(:flight_id,
                  passengers_attributes: %i[name email])
  end
end
