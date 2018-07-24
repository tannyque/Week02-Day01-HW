class Library

  attr_reader :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

end
