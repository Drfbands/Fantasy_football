class LitsController < ApplicationController

	def create 
	@fit = Fit.find(params[:fit_id])
	@lit = @fit.lits.create(params[:lit].permit(:exercise, :set, :reps, :weight, :time, :notes))
	@lit.save

	if @lit.save
			redirect_to fit_path(@fit)
	else
			render 'new'
	end
end

def edit 
	@fit = Fit.find(params[:fit_id])
 	@lit = @fit.lits.find(params[:id])
end 

	def update 
		@fit = Fit.find(params[:fit_id])
		@lit = @fit.lits.find(params[:id])
		
		if @lit.update(params[:lit].permit(:exercise, :set, :reps, :weight, :time, :notes))
			redirect_to fit_path(@fit)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@fit= Fit.find(params[:fit_id])
 		@lit = @fit.lits.find(params[:id])
 		@lit.destroy
 		redirect_to fit_path(@fit)
 	end


end
