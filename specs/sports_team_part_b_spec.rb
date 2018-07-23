require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team_part_b.rb")

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Orcs", ["Thrall", "Garrosh", "Grommash"], "Doomhammer", 0)
  end

  def test_getting_name
    assert_equal("Orcs", @team.team_name())
  end

  def test_getting_players
    assert_equal(["Thrall", "Garrosh", "Grommash"], @team.players())
  end

  def test_getting_coach
    assert_equal("Doomhammer", @team.coach())
  end

  def test_change_coach
    @team.coach = "Durotan"
    assert_equal("Durotan", @team.coach())
  end

  def test_adds_new_player
    @team.new_player("Blackhand")
    assert_equal(4, @team.players().length())
  end

  def test_find_player
    assert_equal(true, @team.find_player("Thrall"))
  end

end
