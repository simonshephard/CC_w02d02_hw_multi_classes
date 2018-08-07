class River

  attr_reader(:name, :fish)

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def lose_a_fish
    fish = @fish.pop()
    return fish
  end

  def count_fish
    return @fish.length
  end

end
