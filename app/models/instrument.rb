class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :category, :location, :renting_price, presence: true
  validates :renting_price, inclusion: { in: 1.. }, numericality: { only_integer: true }

  enum category: [
    :altosaxphone
    :bass,
    :bassclarinet
    :cello,
    :clarinet,
    :drum,
    :doublebass,
    :frenchhorn
    :flute,
    :guiter,
    :harp,
    :keybord,
    :oboe,
    :piano
    :piccolo
    :trumpet
    :viola,
    :violin,
    :xylophone
  ]

  enum condition: [
    :new
    :verygood,
    :good,
    :bad
    :old
  ]
end
