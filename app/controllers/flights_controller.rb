class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @start_flight_options = Flight.order(:start).map { |f| [f.start.strftime('%d/%m/%Y'), f.start] }.uniq

    return if search_params.empty?

    @booking_options = Flight.where(start: search_params[:start],
                                    arrival_airport_id: search_params[:arrival_airport_id],
                                    departure_airport_id: search_params[:departure_airport_id])

  end

  def search_params
    params.permit(:departure_airport_id,
                  :arrival_airport_id,
                  :passengers_count,
                  :start)
  end
end
