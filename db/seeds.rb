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
violin = Instrument.new(
  category: 'violin',
  brand: Faker::Company.name,
  location: 'Tokyo',
  renting_price: rand(10_000..50_000),
  condition: 'mint'
)
violin.user = User.all.sample
violin.save!
violin.photos.attach(io: URI.open("https://images.unsplash.com/photo-1612225330812-01a9c6b355ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "violin1.jpeg")
violin.photos.attach(io: URI.open("https://images.unsplash.com/photo-1460036521480-ff49c08c2781?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80"), filename: "violin2.jpeg")
violin.photos.attach(io: URI.open("https://images.unsplash.com/photo-1566913485242-694e995731b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), filename: "violin3.jpeg")

guitar = Instrument.new(
  category: 'guitar',
  brand: Faker::Company.name,
  location: 'Osaka',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)
guitar.user = User.all.sample
guitar.save!
guitar.photos.attach(io: URI.open("https://images.unsplash.com/photo-1556449895-a33c9dba33dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), filename: "guitar1.jpeg")
guitar.photos.attach(io: URI.open("https://images.unsplash.com/photo-1605020420620-20c943cc4669?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "guitar2.jpeg")

8.times do
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
