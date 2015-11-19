class PlayersController < ApplicationController


def create 
	@team = Team.find(params[:team_id])
	@player = @team.players.create(params[:player].permit(:name, :position, :notes, :why, :why_not))
	@player.save

	if @player.save
			redirect_to team_path(@team)
	else
			render 'new'
	end
end 

def edit 
	@team = Team.find(params[:team_id])
 	@player = @team.players.find(params[:id])
end 

	def update 
		@team = Team.find(params[:team_id])
		@player = @team.players.find(params[:id])
		
		if @player.update(params[:player].permit(:name, :position, :notes, :why, :why_not))
			redirect_to team_path(@team)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@team = Team.find(params[:team_id])
 		@player = @team.players.find(params[:id])
 		@player.destroy
 		redirect_to team_path(@team)
 	end 


end
