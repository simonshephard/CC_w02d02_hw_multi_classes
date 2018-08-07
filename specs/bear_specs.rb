require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Salmon1")
    @fish2 = Fish.new("Salmon2")
    @fish3 = Fish.new("Salmon3")
    @fish4 = Fish.new("Salmon4")
    @fish = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Yukon", @fish)
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  # REMOVED READER ACCESS TO STOMACH SO TESTED IN DIFFERENT WAY
  # def test_get_stomach
  #   assert_equal([], @bear.stomach)
  # end

  # def test_take_fish_from_river
  #   @bear.take_fish_from_river(@river)
  #   assert_equal([@fish4], @bear.stomach)
  # end

  def test_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.food_count)
  end

  def test_food_count
    @bear.take_fish_from_river(@river)
    @bear.take_fish_from_river(@river)
    assert_equal(2, @bear.food_count)
  end

  def test_roar
    assert_equal("Smarter than the average bear!", @bear.roar)
  end



end
