require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab')

class TestStudent < MiniTest::Test
  def test_student_name
    student1 = Student.new("Emma", "e26")
    assert_equal("Emma", student1.name)
  end

  def test_change_name
    student1 = Student.new("Emma", "e26")
    student1.set_name("Robert")
    assert_equal("Robert", student1.name)
  end

  def test_student_talk
    student1 = Student.new("Emma", "e26")
    thing_they_said = student1.talk()
    assert_equal("I can talk!", thing_they_said)
  end

  # def test_favourite_language
  #   student1 = Student.new("")

  def test_favourite_language
    student1 = Student.new("Emma", "e26")
    thing_they_said = student1.say_favourite_language("Ruby")
    assert_equal("I love Ruby", thing_they_said)
  end

  def test_favourite_language__java
    student1 = Student.new("Emma", "e26")
    thing_they_said = student1.say_favourite_language("Java")
    assert_equal("I love Java", thing_they_said)
  end

end
