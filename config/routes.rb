Rails.application.routes.draw do


  get 'welcomes/home'

  resources :teams do 
    resources :players 
  end 

  root "welcomes#home"

  resources :workouts
  
end
