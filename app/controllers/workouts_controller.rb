class WorkoutsController < ApplicationController
 before_action :set_workout, only: [:show, :edit, :update, :destroy]


	def index 
		@workouts = Workout.all
	end 

	def create 
		@workout = Workout.new
	end 

	def new 
		@workout = Workout.new 
	end 

	def edit 
	end 

	def update 
	end 

	def show 
	end 

	def delete 
	end 

	private 

	def set_workout 
		@workout = Workout.find(params[:id])
	end 

	def team_params 
		 params.require(:workout).permit(:date)
	end 






end 