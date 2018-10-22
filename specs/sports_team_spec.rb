require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  def setup
    @players1 = ["paul", "lisa", "peter"]
    @team1 = SportsTeam.new("kings", @players1, "bill")
  end

  def test_change_coach
    # name of the coach of @team1 is bill
    @team1.change_coach("bob")
    # name of the coach for @team1 is bob
    assert_equal("bob", @team1.coach)
  end

  def test_player_start_count
    assert_equal( 3, @team1.players.count)
  end

  def test_player_added
    @team1.add_player("jack")
    assert_equal( 4, @team1.players.count)
  end
end
