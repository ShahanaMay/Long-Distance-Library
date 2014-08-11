# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([
  { title: "Kushiel's Dart",
    author_first_name: "Jacqueline",
    author_last_name: "Carey",
    series: "Kushieline Legacy",
    isbn: "1234567890" },
  { title: "Fool Moon",
    author_first_name: "Jim",
    author_last_name: "Butcher",
    series: "Dresden Files",
    isbn: "2345678901" }
])

genres = Genre.create([
  { name: "Science Fiction" },
  { name: "Alternate History" },
  { name: "Fantasy" },
  { name: "Mystery" }
])

formats = Format.create([
  { name: "Mass Market" },
  { name: "Trade Paperback" },
  { name: "Hardcover" },
  { name: "E-book" }
])
