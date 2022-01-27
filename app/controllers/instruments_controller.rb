class InstrumentsController < ApplicationController
  def index
  end

  def show
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
      :category, :brand, :location, :condition, :renting_price
    )
  end
end
