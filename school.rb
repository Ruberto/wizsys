require "json"

class School
  COURSES = ["Muggle Studies", "Wand Practice", "Defence against the dark arts", "Herbology", "Quidditch", "Advanced Broom making", "Scrying", "Potions", "Dueling", "Advanced Animagus", "Magical Creatures studies", "Magical Creatures", "Magical banking"]

  def self.best_suited_for(array)
    return '' unless array.delete_if {|x| x == 0}.count == 5
    new_array = {}
    COURSES.each_with_index do |g, i|
      new_array[g] = array[i]
    end
    other_array = {}
    file = File.read "school_data.json"
    data = JSON.parse(file)
    data
    data.each do |school|
      h = school.last["courses"].zip(school.last["course_rating"])
      other_array[school.first] = h
    end
    sc = {}
    other_array.each do |s|
      score = 0
      s[1].each {|c| score += (c[1].to_f * new_array[c[0]].to_f)}
      sc[s[0]] = score
    end
    sc.sort_by(&:last).last[0]
  end
end
