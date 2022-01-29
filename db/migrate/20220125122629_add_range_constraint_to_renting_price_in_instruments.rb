class AddRangeConstraintToRentingPriceInInstruments < ActiveRecord::Migration[6.1]
  def change
    add_check_constraint :instruments, "renting_price > 0", name: "renting_price_check"
  end
end
