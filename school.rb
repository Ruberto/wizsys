class School
  COURSES = ["Muggle Studies", "Wand Practice", "Defence against the dark arts", "Herbology", "Quidditch", "Advanced Broom making", "Scrying", "Potions", "Dueling", "Advanced Animagus", "Magical Creatures studies", "Magical Creatures", "Magical banking"]

  SCHOOL_DATA = {"Beauxbatons Academy of Magic" => {location: 'Pyrenees, France',
                                                   courses: ["Muggle Studies", "Wand Practice", "Defence against the dark arts", "Herbology", "Quidditch"],
                                                   course_rating: [5, 41, 25, 15, 100]},
                 "Castelobruxo" => {location: 'Amazon rainforest, Brazil',
                                   courses: ["Advanced Broom making", "Wand Practice", "Defence against the dark arts", "Scrying", "Beast Studies"],
                                   course_rating: [32, 54, 10, 80, 100]},
                 "Durmstrang Institute" => {location: 'Scandinavia',
                                           courses: ["Potions", "Wand Practice", "Dark arts", "Dueling", "Advanced Animagus"],
                                           course_rating: [35, 10, 90, 63, 8]},
                 "Hogwarts School of Witchcraft and Wizardry" => {location: 'Highlands, Scotland',
                                                                 courses: ["Wand Practice", "Magical Creatures studies", "Potions", "Defence against the dark arts", "Herbology"],
                                                                 course_rating: [22, 70, 90, 90, 38]},
                 "Ilvermorny School of Witchcraft and Wizardry" => {location: 'Mount Greylock, United States of America',
                                                                   courses: ["Magical Creatures", "Wand Practice", "Dark arts", "Magical banking", "Quidditch"],
                                                                   course_rating: [53, 22, 41, 89, 40]}
                  }

  def self.best_suited_for(array)
    return '' unless array.delete_if {|x| x == 0}.count == 5
    new_array = {}
    COURSES.each_with_index do |g, i|
      new_array[g] = array[i]
    end
    other_array = {}
    SCHOOL_DATA.each do |school|
      h = school.last[:courses].zip(school.last[:course_rating])
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
