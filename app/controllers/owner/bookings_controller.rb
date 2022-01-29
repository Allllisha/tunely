class Owner::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
  end
end
