require("minitest/autorun")
require("minitest/rg")
require_relative("../library_extension.rb")

class TestLibrary < MiniTest::Test

  def setup
    @book =
    {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    }

    @library = Library.new()
    @library.add_book(@book)
  end

  def test_add_book
    book2 =
    {
      title: "the_hobbit",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    }

    @library.add_book(book2)
    result = @library.books
    assert_equal(2, result.size())
  end

  def test_get_book_by_title
    result = @library.find_by_title("lord_of_the_rings")
    assert_equal(@book, result)
  end

  def test_get_rental_details_by_title
    result = @library.get_rental_details("lord_of_the_rings")
    assert_equal(@book[:rental_details], result)
  end

  def test_add_book_without_rental_details
    @library.add_book_by_title("the_hobbit")

    expected_book = {
      title: "the_hobbit",
      rental_details: {
        student: "",
        date: ""
      }
    }

    actual_book = @library.find_by_title("the_hobbit")
    assert_equal(expected_book, actual_book)
  end

end
