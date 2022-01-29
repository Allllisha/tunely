class BookingsController < ApplicationController
before_action :find_instrument, only: [:create]
before_action :find_booking, only: [:destroy, :update]

  def index
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
    # see only renter booking, have same as owner/index
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.instrument = @instrument
    authorize @booking
    if @booking.save
      @booking.pending!
      redirect_to instrument_bookings_path
    else
      render "instrument/show"
    end
  end

  def update
    authorize @booking
    if @bookings.update(booking.params)
      flash[:notice] = "Booking is #{@booking.status}"
      redirect_to instrument_bookings_path(@booking)
    else
      render :update
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to instrument_bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :end_date, :status)
  end

  def find_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
