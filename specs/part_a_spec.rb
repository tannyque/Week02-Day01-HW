require('minitest/autorun')
require_relative('../part_a.rb')

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Tanny", "G7")
  end

  def test_getting_name
    assert_equal("Tanny", @student.name())
  end

end
