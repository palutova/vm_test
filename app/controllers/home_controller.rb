class HomeController < ApplicationController
  def index
    @results = Result.all
  end

  def add_new_player
    @result = helpers.add_result(new_player_params[:player_id], new_player_params[:match_id], new_player_params[:result])
    if @result.present?
      render :json => {:success => true, :data =>  {:message => 'Результат сохранен!'}}
    else
      render :json => {:success => true, :data =>  {:message => 'Что-то пошло не так'}}
    end
  end

  def check_result
    @result = helpers.check_player_has_result(check_result_params[:player_id], check_result_params[:result_intro])
    if @result.present?
      render :json => {:success => true, :data =>  {:message => 'Да'}}
    else
      render :json => {:success => true, :data =>  {:message => 'Нет'}}
    end
  end

  def top_five
    @players = helpers.show_player_on_top(top_five_params[:result_intro])
    @players_on_team = helpers.show_player_on_top_with_team(top_five_params[:team_id], top_five_params[:result_intro])
    msg = "Игроки выполнившие показатель '#{top_five_params[:result_intro]}' : \n"
    if @players.present?
      msg += @players.map {|player| player.second_name }.join(', ')
    else
      msg = 'никто'
    end
    msg += ". \n А для команды #{Team.find(top_five_params[:team_id]).name} : \n"
    if @players_on_team.present?
      msg += @players_on_team.map {|player| player.second_name }.join(', ')
    else
      msg = 'никто'
    end
    render :json => {:success => true, :data =>  {:message => msg}}
  end

  private

  def new_player_params
    params.require(:add_result).permit(:player_id, :match_id, :result)
  end

  def check_result_params
    params.require(:check_result).permit(:player_id, :result_intro)
  end

  def top_five_params
    params.require(:top_five).permit(:team_id, :result_intro)
  end

end
