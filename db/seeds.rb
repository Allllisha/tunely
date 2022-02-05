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


drum = Instrument.new(
  category: 'drum',
  brand: Faker::Company.name,
  location: 'hokkaido',
  renting_price: rand(10_000..50_000),
  condition: 'mint'
)
drum.user = User.all.sample
drum.save!
drum.photos.attach(io: URI.open("https://images.unsplash.com/photo-1543443258-92b04ad5ec6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "drum1.jpeg")
drum.photos.attach(io: URI.open("https://images.unsplash.com/photo-1524230659092-07f99a75c013?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZHJ1bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "drum2.jpeg")
drum.photos.attach(io: URI.open("https://images.unsplash.com/photo-1588032786045-59cefda005c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJ1bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "drum3.jpeg")


piano = Instrument.new(
  category: 'piano',
  brand: Faker::Company.name,
  location: 'kanagawa',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)
piano.user = User.all.sample
piano.save!
piano.photos.attach(io: URI.open("https://images.unsplash.com/photo-1620942988625-74825774fdda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBpYW5vfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"), filename: "piano1.jpeg")
piano.photos.attach(io: URI.open("https://images.unsplash.com/photo-1609707955926-df01104aa8f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBpYW5vfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"), filename: "piano2.jpeg")


flute = Instrument.new(
  category: 'flute',
  brand: Faker::Company.name,
  location: 'kanagawa',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)

flute.user = User.all.sample
flute.save!
flute.photos.attach(io: URI.open("https://images.unsplash.com/photo-1562808191-76e71b08a870?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Zmx1dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"), filename: "flute1.jpeg")
flute.photos.attach(io: URI.open("https://images.unsplash.com/photo-1562808191-76e71b08a870?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Zmx1dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"), filename: "flute2.jpeg")



keybord = Instrument.new(
  category: 'keybord',
  brand: Faker::Company.name,
  location: 'Kagoshima',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)

keybord.user = User.all.sample
keybord.save!
keybord.photos.attach(io: URI.open("https://images.unsplash.com/photo-1598653222000-6b7b7a552625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a2V5Ym9hcmQlMjBpbnN0cnVtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"), filename: "keybord1.jpeg")
keybord.photos.attach(io: URI.open("https://images.unsplash.com/photo-1578410170179-bb10594ed395?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8a2V5Ym9hcmQlMjBpbnN0cnVtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"), filename: "keybord2.jpeg")

clarinet.user = User.all.sample
clarinet.save!
clarinet.photos.attach(io: URI.open("https://images.unsplash.com/photo-1600771488491-c22d42a9347d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2xhcmluZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"), filename: "clarinet.jpeg")
clarinet.photos.attach(io: URI.open("https://images.unsplash.com/photo-1569791832138-fbdd9a500384?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"), filename: "clarinet2.jpeg")

clarinet = Instrument.new(
  category: 'clarinet',
  brand: Faker::Company.name,
  location: 'Iwate',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)


trumpet.user = User.all.sample
trumpet.save!
trumpet.photos.attach(io: URI.open("https://images.unsplash.com/photo-1573871666457-7c7329118cf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJ1bXBldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "trumpet.jpeg")
trumpet.photos.attach(io: URI.open("https://images.unsplash.com/photo-1511192336575-5a79af67a629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJ1bXBldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "trumpetjpeg")

trumpet = Instrument.new(
  category: 'trumpet',
  brand: Faker::Company.name,
  location: 'Tokyo',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)


frenchhorn.user = User.all.sample
frenchhorn.save!
frenchhorn.photos.attach(io: URI.open("https://images.unsplash.com/photo-1573871666457-7c7329118cf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJ1bXBldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "trumpet.jpeg")
frenchhorn.photos.attach(io: URI.open("https://images.unsplash.com/photo-1511192336575-5a79af67a629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJ1bXBldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"), filename: "trumpetjpeg")

frenchhorn = Instrument.new(
  category: 'frenchhorn',
  brand: Faker::Company.name,
  location: 'frenchhorn',
  renting_price: rand(10_000..50_000),
  condition: 'verygood'
)




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
