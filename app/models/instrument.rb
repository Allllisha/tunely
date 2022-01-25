class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :category, :location, :renting_price, presence: true
  validates :renting_price, inclusion: { in: 1.. }, numericality: { only_integer: true }

  enum category: [
    :trumpet,
    :violin
  ]

  enum condition: [
    :good,
    :bad
  ]
end
