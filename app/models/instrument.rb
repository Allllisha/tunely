class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

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
<<<<<<< HEAD
    :mint,
=======
    :new
>>>>>>> parent of f954b82... Change seeds but faced with enum issues
    :verygood,
    :good,
    :bad
    :old
  ]
end
