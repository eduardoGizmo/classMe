
class Student

 attr_accessor :name,:cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(favourite_lenguage)

    return "My favourite lenguage is #{favourite_lenguage}"

  end

end
