require("minitest/autorun")
require('minitest/rg')
require_relative('../part_b.rb')


class TestSportsTeam < Minitest::Test

  def test_sports_team_get_team()
    team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
    assert_equal("CodeClan",team_profile.team )
  end

  def test_sports_team_get_players()
    team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
    assert_equal(["Eduardo","Aresky"],team_profile.players )
  end

  def test_sports_team_get_coach()
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
      assert_equal("MacBook Pro",team_profile.coach)
    end

  def test_sports_team_update_coach()
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
      team_profile.coach = "Linux"
      assert_equal("Linux",team_profile.coach)
    end

    def test_add_player
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
      team_profile.add_player("Steve Jobs")
      assert_equal(["Eduardo","Aresky","Steve Jobs"], team_profile.players)
    end

    def test_is_player
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro", 0)
      assert_equal(true,team_profile.is_player("Eduardo"))

    end

    def test_get_points
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro",0)
      assert_equal(0,team_profile.points)
    end

    def test_add_or_remove_points
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro",0)
      assert_equal(1,team_profile.add_or_remove_points(true))

    end

    def test_add_or_remove_points
      team_profile= SportsTeam.new("CodeClan",["Eduardo","Aresky"],"MacBook Pro",0)
      assert_equal(1,team_profile.add_or_remove_points(true))

    end








end
