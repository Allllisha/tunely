class Owner::BookingsController < ApplicationController
  def index
    @instruments = policy_scope(Instrument).where(user_id: current_user.id)
    @instruments_with_bookings = []
    @instruments_without_bookings = []
    @instruments.each do |instrument|
      if instrument.bookings.present?
        @instruments_with_bookings << instrument
      else
        @instruments_without_bookings << instrument
      end
    end
  end
end
