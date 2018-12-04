User.create!(name:  "Duke LeLe",
             email: "thuanduc.97@gmail.com",
             year: "2020",
             password: "123456",
             admin: true)

20.times do |n|
  name  = Faker::Name.name
  email = "duke#{n+1}@gmail.com"
  password = "123456"
  year = "201#{n+1}"
  User.create!(name: name,
               email: email,
               year: year,
               password: password)
end
