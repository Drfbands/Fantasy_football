class PredaysController < ApplicationController
  def create
  		@productivity = Productivity.find(params[:productivity_id])
	@preday = @productivity.predays.create(params[:preday].permit(:thing, :why, :why_not, :notes))
	@preday.save

	if @preday.save
			redirect_to productivity_path(@productivity)
	else
			render 'new'
	end
  end


def edit 
	@productivity = Productivity.find(params[:productivity_id])
 	@preday = @productivity.predays.find(params[:id])
end 

	def update 
		@productivity = Productivity.find(params[:productivity_id])
		@preday = @productivity.predays.find(params[:id])
		
		if @preday.update(params[:preday].permit(:thing, :why, :why_not, :notes))
			redirect_to productivity_path(@productivity)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@productivity = Productivity.find(params[:productivity_id])
 		@preday = @productivity.predays.find(params[:id])
 		@preday.destroy
 		redirect_to productivity_path(@productivity)
 	end 


end
