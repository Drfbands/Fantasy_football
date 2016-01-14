class PreviewsController < ApplicationController
	

	def create 
		@focu = Focu.find(params[:focu_id])
		@preview = @focu.previews.create(params[:preview].permit{:things, :why_most_important, :why_not, :time_estimated})
		@preview.save

		Redirect_to focu_path(@focu)

	if @preview.save
			redirect_to focu_path(@focu)
	else
			render 'new'
	end
end 

def edit 
	@focu = Focu.find(params[:focu_id])
 	@preview = @focu.previews.find(params[:id])
end 

	def update 
		@focu = Focu.find(params[:focu_id])
		@preview = @focu.previews.find(params[:id])
		
		if @previw.update(params[:preview].permit(:things, :why_most_important, :why_not, :time_estimated))
			redirect_to focu_path(@focu)
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@focu = focu.find(params[:focu_id])
 		@preview = @focu.previews.find(params[:id])
 		@preview.destroy
 		redirect_to focu_path(@focu)
 	end 

end
