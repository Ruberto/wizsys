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
    file = File.read "school_data.json"
    data = JSON.parse(file)
    if school.empty? || FoeGlass.new(school, @name).is_deatheater?
      "Sorry #{@name}, turns out you are going to be a squib"
    else
      "Congradulations #{@name}, You have been accepted at #{school}, which is in #{data[school]["location"]}."
    end
  end
end
