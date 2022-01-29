class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @instruments = policy_scope(Instrument)
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    authorize @instrument
    @instrument.save!
    redirect_to owner_bookings_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(
      :category, :brand, :location, :condition, :renting_price, photos: []
    )
  end
end
