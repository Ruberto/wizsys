class FoeGlass
  def initialize(school, name)
    @school = school
    @name = name
  end

  def is_deatheater?
    return true if @school == "Durmstrang Institute" && @name =~ /voldemort/
    false
  end
end
