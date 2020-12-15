class Book
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_author(author)
        BookAuthor.all.each do |book_author|
            if book_author.book.include?(self)
                book_author.author << author
            end
        end
    end

    def authors
        BookAuthor.all.select do |book_author|
            book_author.book.include?(self)
        end
    end

end