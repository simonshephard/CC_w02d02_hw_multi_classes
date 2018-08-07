class Bear

  attr_reader(:name, :type)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish_from_river(river)
    fish = river.lose_a_fish()
    @stomach << fish
  end

  def food_count
    return @stomach.length
  end

  def roar
    return "Smarter than the average bear!"
  end

end
