class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
   if @booking.save
    redirect_to booking_path(@booking)
   else
    render :new
   end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
