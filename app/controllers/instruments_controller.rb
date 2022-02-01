class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @fours = Instrument.all.last(4)
    @keyboards = Instrument.where(category: ["13","11"])
    @strings = Instrument.where(category: ["17","16","3","10","6"])
    @brasses = Instrument.where(category: ["15","7","0"])
    @woodwinds = Instrument.where(category: ["2","4","8","12","14"])
    @percussions = Instrument.where(category: ["5","18"])
    @guitars = Instrument.where(category: ["1","9"])
    @instruments = policy_scope(Instrument)
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    @booking = Booking.new
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
