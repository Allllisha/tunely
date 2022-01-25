class AddPresenceConstraintsInInstruments < ActiveRecord::Migration[6.1]
  def change
    change_column_null :instruments, :category, false
    change_column_null :instruments, :location, false
    change_column_null :instruments, :renting_price, false
  end
end
