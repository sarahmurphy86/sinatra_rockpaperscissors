require 'minitest/autorun'
require_relative '../models/game'
require 'minitest/rg'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock","paper")
    @game2 = Game.new("rock","rock")
    @game3 = Game.new("scissors", "paper")
    @game4 = Game.new("scissors", "hammer")
  end

  def test_game__rock_paper
    assert_equal("paper wins!", @game1.game() )
  end

  def test_game__rock_rock
    assert_equal("draw", @game2.game() )
  end

  def test_game__scissors_paper
    assert_equal("scissors wins!", @game3.game())
  end

  def test_game__invalid
    assert_equal("invalid entry, try again", @game4.game())
  end

end
