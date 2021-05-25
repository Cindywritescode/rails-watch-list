# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up all database'
Movie.destroy_all
puts "database is clean"

puts 'create 4 movie'
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)


puts 'create 6 lists'
require "open-uri"

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621901904/ckfr764yp3wngpsvsw3vnv14scv3.jpg')
tw = List.new(name: 'Taiwanese Classic')
tw.photo.attach(io: file, filename: 'annlee_movies.jpg', content_type: 'image/jpg')
tw.save

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621890278/w1u885l782av0g3mo9z9mxeuaaig.jpg')
musical = List.new(name: 'Musical')
musical.photo.attach(io: file, filename: 'musical.jpg', content_type: 'image/jpg')
musical.save

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621897629/1hglnh12lta3pb2bkgri14ce3huu.jpg')
romance = List.new(name: 'Romance')
romance.photo.attach(io: file, filename: 'romance.jpg', content_type: 'image/jpg')
romance.save

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621901742/ss28549vfgnjak713swwgqr7iocd.jpg')
drama = List.new(name: 'Drama')
drama.photo.attach(io: file, filename: 'drama.jpg', content_type: 'image/jpg')
drama.save

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621898068/dzq29avksy2l5jumle67zemza19e.jpg')
comedy = List.new(name: 'Comedy')
comedy.photo.attach(io: file, filename: 'comedy.jpg', content_type: 'image/jpg')
comedy.save

file = URI.open('https://res.cloudinary.com/cindyscloudinary/image/upload/v1621897946/gnx6dlvqmy213c3qhtr6z0bk69nr.jpg')
kr = List.new(name: 'Korean Cinema')
kr.photo.attach(io: file, filename: 'kr-cinema.jpg', content_type: 'image/jpg')
kr.save

puts 'done'