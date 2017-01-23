require_relative './foeglass'
require_relative './school'

class Wizard
  attr_accessor :interests
  def initialize(name, interests)
    @name = name
    @interests = interests
  end

  def best_school
    school = School.best_suited_for(interests)
    if school.empty? || FoeGlass.new(school, @name).is_deatheater?
      "Sorry #{@name}, turns out you are going to be a squib"
    else
      "Congradulations #{@name}, You have been accepted at #{school}, which is in #{School::SCHOOL_DATA[school][:location]}."
    end
  end
end

puts Wizard.new("Humpfry Bumblebat", [1,9,0,3,6,0,8,0,0,0,0,0,0]).best_school
