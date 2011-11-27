class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
  end
  
  def create
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.new(params[:booking])
    if @booking.save
      redirect_to [@flight, @booking]
    else
      render action: :new
    end
  end
end
