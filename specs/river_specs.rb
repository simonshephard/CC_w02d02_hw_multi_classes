require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon1")
    @fish2 = Fish.new("Salmon2")
    @fish3 = Fish.new("Salmon3")
    @fish4 = Fish.new("Salmon4")
    @fish = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Yukon", @fish)
  end

  def test_get_name
    assert_equal("Yukon", @river.name)
  end

  def test_get_fish
    assert_equal(@fish, @river.fish)
  end

  def test_lose_a_fish
    assert_equal(@fish4, @river.lose_a_fish())
    assert_equal([@fish1, @fish2, @fish3], @river.fish)
  end

  def test_fish_count
    assert_equal(4, @river.count_fish)
  end


end
