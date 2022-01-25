class InstrumentsController < ApplicationController
  def index
    # @instruments = Instruments.all
  end

  def show
    # @instrument = Instrument.find(params[:id])
  end

  def new
    # @instrument = Instrument.new
  end

  def create
    # @instrument = Instrument.new(instrument_params)
    # if @instrument.save
    #   redirect_to instrument_path(@instrument)
    # else 
    #   render :new
  end

  private 

  def instrument_params
    #do we permit everything from table?
    # params.require(:instrument).permit(:category, :brand, :location, :condition, :availability)
  end
end
