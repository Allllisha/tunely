class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :start_date, :end_date, presence: true

  enum status: [:pending, :accepted, :refused]
end
