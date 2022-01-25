Instrument.destroy_all
Booking.destroy_all
User.destroy_all

User.create!([
  {first_name: Arisa, last_name: Nemoto, email: "ardolce23@gmail.com", password: "a23123123", admin: true},
  {first_name: Arisa, last_name: Nemoto, email: "farbenmusik23@gmail.com", password: "a23123123", admin: false}
  ])

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
