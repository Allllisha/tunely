Instrument.destroy_all
Booking.destroy_all
User.destroy_all

User.new([
  {first_name: Arisa, last_name: Nemoto, email: "ardolce23@xxx.com", password: "a23123123"},
  {first_name: Alisha, last_name: Nemoto, email: "farbenmusik23@xxx.com", password: "1234567"}
  ])

10.times do 
  instrument = Instrument.new(
    category: Instrument.categories.keys.sample,
    brand: Faker::Company.name,
    location: ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima', 'Hokkaido'].sample,
    renting_price: rand(10000..50000),
    condition: Instrument.conditions.keys.sample
  )
  instrument.user = User.all.sample
  instrument.save!
end

10.times do 
  booking = Booking.new(
    start_date: Faker::Date.between( from: 1.year.ago, to: Date.today),
    end_date: Faker::Date.between( from: Date.today, to: 1.year.from_now)
  )
  booking.user = User.all.sample
  booking.instrument = Instrument.all.sample
  booking.save!
end
