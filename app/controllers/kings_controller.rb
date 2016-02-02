class KingsController < ApplicationController

		def create 
	@day = Day.find(params[:day_id])
	@king = @day.kings.create(params[:king].permit(:time, :notes, :growth))
	@king.save

	if @king.save
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
		@king = @day.kings.find(params[:id])
		
		if @king.update(params[:king].permit(:time, :notes, :growth))
			redirect_to day_path(@day)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@day = Day.find(params[:day_id])
 		@king = @day.kings.find(params[:id])
 		@king.destroy
 		redirect_to day_path(@day)
 	end




end
