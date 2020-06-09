module ApplicationHelper
  def add_result(match_id, player_id, text)
    @player = Player.find(player_id) unless player_id.blank?
    @match = Match.find(match_id) unless player_id.blank?
    if @player.present? and @match.present?
      @result = Result.create!(match_id:match_id, player_id:player_id, intro: text)
      if @result.present?
        return @result
      else
        puts 'something went wrong'
        return false
      end
    else
      puts 'something went wrong'
      return false
    end
  end

  def check_player_has_result(player_id, intro)
    @result = Result.where(player_id: player_id, intro: intro)
    if @result.present?
      return true
    else
      puts 'something went wrong'
      return false
    end
  end

  def show_player_on_top(intro)
    @players = Player.all.includes(:results).where(results: { intro: intro }).limit(5)
    if @players.present?
      return @players
    else
      puts 'something went wrong'
      return false
    end
  end

  def show_player_on_top_with_team(team_id, intro)
    @players_on_team = Player.where(team_id: team_id).includes(:results).where(results: { intro: intro }).limit(5)
    if @players_on_team.present?
      return @players_on_team
    else
      puts 'something went wrong'
      return false
    end
  end

end
