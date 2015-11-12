class PlayersController < ApplicationController
before_action :set_team

def create 
	@player = @team.players.create(player_params)
	redirect_to @team
end 

	def destroy 
 		@player = @team.players.find(params[:id])
 		if @player.destroy
 			flash[:success] = "Player was deleted."
 		else 
 			flash[:error] = "Player could not be deleted."
 		end 
 		redirect_to @team
 	end 

private

	def set_team
		@team = Team.find(params[:team_id])
	end

	def player_params
		params[:player].permit(:name, :position, :note, :why, :why_not)
	end

end
