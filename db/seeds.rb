Instrument.destroy_all
Booking.destroy_all

10.times do 
  Instrument.create!(
    brand: Faker::Music.instrument,
    location: ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima', 'Hokkaido'].sample,
    renting_price: rand(10000..50000),
    user_id: User.all.sample.id
  )
end

10.times do 
  Booking.create!(
    start_date: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today),
    end_date: Faker::Date.between( from: 1.year.ago, to: Date.today)
  )
end