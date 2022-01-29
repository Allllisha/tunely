puts 'Clearing database...'
Instrument.destroy_all
Booking.destroy_all
User.destroy_all

puts 'Generating users...'
arisa = User.new(
  first_name: "Arisa", last_name: "Nemoto", email: "ardolce23@gmail.com", password: "a23123123"
)
arisa.save!

tom = User.new(
  first_name: "Tom", last_name: "Tsui", email: "tomtsui@xxx.com", password: "1234567"
)
tom.save!

ref = User.new(
  first_name: "Ref", last_name: "Mag", email: "refmag@xxx.com", password: "1234567"
)
ref.save!

nico = User.new(
  first_name: "Nico", last_name: "Lentgen", email: "nicolaslentgen@xxx.com", password: "1234567"
)
nico.save!

puts 'Generating instruments...'
10.times do
  instrument = Instrument.new(
    category: Instrument.categories.keys.sample,
    brand: Faker::Company.name,
    location: ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima', 'Hokkaido'].sample,
    renting_price: rand(10_000..50_000),
    condition: Instrument.conditions.keys.sample
  )
  instrument.user = User.all.sample
  instrument.save!
end

puts 'Generating bookings...'
10.times do
  booking = Booking.new(
    start_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    end_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    status: rand(0..2)
  )
  booking.user = User.all.sample
  booking.instrument = Instrument.all.sample
  booking.save!
end
puts 'Done.'
