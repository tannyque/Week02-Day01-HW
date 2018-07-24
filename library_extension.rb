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

  def get_rental_details(title)
    book = find_by_title(title)
    return book[:rental_details]
  end

  def add_book_by_title(name_of_book)
    book = {
      title: name_of_book,
      rental_details: {
        student: "",
        date: ""
      }
    }

    @books.push(book)
  end

end
