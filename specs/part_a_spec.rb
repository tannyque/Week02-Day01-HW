require('minitest/autorun')
require_relative('../part_a.rb')

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Tanny", "G7")
  end

  def test_getting_name()
    assert_equal("Tanny", @student.name())
  end

  def test_getting_cohort()
    assert_equal("G7", @student.cohort())
  end

  def test_change_student_name()
    @student.set_student_name("Billy")
    assert_equal("Billy", @student.name())
  end

  def test_change_student_cohort()
    @student.set_student_cohort("G6")
    assert_equal("G6", @student.cohort())
  end

end
