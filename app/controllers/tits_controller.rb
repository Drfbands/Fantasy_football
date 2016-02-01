class TitsController < ApplicationController

		def create 
	@fit = Fit.find(params[:fit_id])
	@tit = @fit.tits.create(params[:tit].permit(:exercise, :set, :reps, :weight, :time, :notes, :growthrate))
	@tit.save

	if @tit.save
			redirect_to fit_path(@fit)
	else
			render 'new'
	end
end


def edit 
	@fit = Fit.find(params[:fit_id])
 	@tit = @fit.tits.find(params[:id])
end 

	def update 
		@fit = Fit.find(params[:fit_id])
		@tit = @fit.tits.find(params[:id])
		
		if @tit.update(params[:tit].permit(:exercise, :set, :reps, :weight, :time, :notes, :growthrate))
			redirect_to fit_path(@fit)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@fit= Fit.find(params[:fit_id])
 		@tit = @fit.tits.find(params[:id])
 		@tit.destroy
 		redirect_to fit_path(@fit)
 	end



end
