class RemoveAvailabilityFromInstruments < ActiveRecord::Migration[6.1]
  def change
    remove_column :instruments, :availability, :boolean
  end
end
