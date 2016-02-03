class ThingsController < ApplicationController

	def create 
	@day = Day.find(params[:day_id])
	@thing = @day.things.create(params[:thing].permit(:mostimp, :notes, :why, :whynot, :growth, :time, :noted))
	@thing.save

	if @thing.save
			redirect_to day_path(@day)
	else
			render 'new'
	end
end

def edit 
	@day = Day.find(params[:day_id])
 	@thing = @day.things.find(params[:id])
end 
	def update 
		@day = Day.find(params[:day_id])
		@thing = @day.things.find(params[:id])
		
		if @thing.update(params[:thing].permit(:mostimp, :notes, :why, :whynot, :growth, :time, :noted))
			redirect_to day_path(@day)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@day = Day.find(params[:day_id])
 		@thing = @day.things.find(params[:id])
 		@thing.destroy
 		redirect_to day_path(@day)
 	end




end
