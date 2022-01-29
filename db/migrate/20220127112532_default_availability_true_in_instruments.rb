class DefaultAvailabilityTrueInInstruments < ActiveRecord::Migration[6.1]
  def change
    change_column_default :instruments, :availability, true
  end
end
