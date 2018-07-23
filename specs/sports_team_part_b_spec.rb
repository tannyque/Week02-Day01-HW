require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team_part_b.rb")

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Orcs", ["Thrall", "Garrosh", "Grommash"], "Doomhammer")
  end

  def test_getting_name
    assert_equal("Orcs", @team.team_name())
  end

  def test_getting_players
    assert_equal(["Thrall", "Garrosh", "Grommash"], @team.players())
  end

end