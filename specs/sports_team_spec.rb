require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  def setup
    @players1 = ["paul", "lisa", "peter"]
    @team1 = SportsTeam.new("kings", @players1, "bill", 0)
  end

  def test_change_coach
    # name of the coach of @team1 is bill
    @team1.change_coach("bob")
    # # name of the coach for @team1 is bob
    expected = "bob"
    actual = @team1.coach
    assert_equal(expected, actual)
  end

  def test_player_start_count
    assert_equal( 3, @team1.players.count)
  end

  def test_player_added
    @team1.add_player("jack")
    expected = 4
    actual = @team1.players.count
    assert_equal( expected, actual )
  end

  def test_players_in_team
    has_lisa = @team1.players_in_team("lisa")
    assert_equal(true, has_lisa)
  end

  def test_add_point
    expected = 1
    actual = @team1.add_point("win")
    assert_equal(expected, actual)
  end


end
