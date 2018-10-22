#PARTA
require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test
  def setup
    @student = Student.new("Emma", "e26")
  end

  def test_student_name
    assert_equal("Emma", @student.name)
  end

  def test_change_name
    @student.set_name("Robert")
    assert_equal("Robert", @student.name)
  end

  def test_student_talk
    thing_they_said = @student.talk()
    assert_equal("I can talk!", thing_they_said)
  end

  # def test_favourite_language
  #   student1 = Student.new("")

  def test_favourite_language
    thing_they_said = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", thing_they_said)
  end

  def test_favourite_language__java
    thing_they_said = @student.say_favourite_language("Java")
    assert_equal("I love Java", thing_they_said)
  end

end
