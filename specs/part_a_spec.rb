require('minitest/autorun')
require_relative('../part_a.rb')

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Dog", "K9")
  end

  def test_getting_name()
    assert_equal("Dog", @student.name())
  end

  def test_getting_cohort()
    assert_equal("K9", @student.cohort())
  end

  def test_change_student_name()
    @student.set_student_name("Billy")
    assert_equal("Billy", @student.name())
  end

  def test_change_student_cohort()
    @student.set_student_cohort("G8")
    assert_equal("G8", @student.cohort())
  end

  def test_get_student_to_talk()
    assert_equal("I can talk!", @student.talk)
    # @student.set_student_to_talk("I can talk!")
    # assert_equal("I can talk!", @student.)
  end

  def test_fav_language()
    result = @student.fav_language("Ruby")
    assert_equal("I love Ruby!", result)
  end

end
