class Instrument < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :category, :location, :renting_price, presence: true
  validates :renting_price, inclusion: { in: 1.. }, numericality: { only_integer: true }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  enum category: [
    :altosaxphone,
    :bass,
    :bassclarinet,
    :cello,
    :clarinet,
    :drum,
    :doublebass,
    :frenchhorn,
    :flute,
    :guitar,
    :harp,
    :keybord,
    :oboe,
    :piano,
    :piccolo,
    :trumpet,
    :viola,
    :violin,
    :xylophone
  ]

  enum condition: [
    :mint,
    :verygood,
    :good,
    :bad,
    :old,
  ]
end
