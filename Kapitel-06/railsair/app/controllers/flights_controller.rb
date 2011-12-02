class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end
end
