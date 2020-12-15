class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_book(book)
        BookAuthor.new(book,self)
    end

    def books
        BookAuthor.all.select do |book_author|
           book_author.author.include?(self)
        end
    end
end