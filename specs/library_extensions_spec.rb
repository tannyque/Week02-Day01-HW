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

end
