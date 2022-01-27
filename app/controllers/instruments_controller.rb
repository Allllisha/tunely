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
  end
end
