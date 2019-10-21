require("minitest/autorun")
require('minitest/rg')
require_relative('../part_a.rb')


class TestStudent < Minitest::Test

  def test_student_get_name()
    student_profile= Student.new("Aresky",35)

    assert_equal("Aresky", student_profile.name)

  end

  def test_update_name
    student_profile= Student.new("Eduardo",35)
    student_profile.name = "Marc"
    assert_equal("Marc", student_profile.name)

  end

  def test_update_cohort
    student_profile= Student.new("Eduardo",35)
    student_profile.cohort = 36
    assert_equal(36, student_profile.cohort)

  end

  def test_talk
    student_profile= Student.new("Eduardo",35)
    assert_equal("I can talk!", student_profile.talk)
  end

  def test_favourite_lenguage
    student_profile= Student.new("Eduardo",35)
    assert_equal("My favourite lenguage is Ruby", student_profile.say_favourite_language("Ruby"))
  end

end
