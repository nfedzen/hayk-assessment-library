
require 'pry'
require_relative './book.rb'
require_relative './author.rb'
require_relative './book_author.rb'

stephen_king = Author.new("Stephen King")
melissa_king = Author.new("Melissa King")
tolkien = Author.new("Tolkien")

the_shining = Book.new("The Shining")
cujo = Book.new("Cujo")
dead_zone = Book.new("Dead Zone")
the_hobbit = Book.new("The Hobbit")
lord_of_the_rings = Book.new("Lord of the Rings")



the_insitute = Book.new("The Insitute")



book_author1 = BookAuthor.new(the_shining, stephen_king)
book_author2 = BookAuthor.new(cujo, stephen_king)
book_author3 = BookAuthor.new(dead_zone, stephen_king)
book_author4 = BookAuthor.new(the_hobbit,tolkien)

the_shining.add_author(melissa_king)
stephen_king.add_book(the_insitute)
tolkien.add_book(lord_of_the_rings)

the_shining.authors
tolkien.books


binding.pry