Rails.application.routes.draw do



  resources :fits do 
  	 resources :lits 
  	end 

  resources :days do 
    resources :things 

  end 

 


  get 'welcomes/home'

  resources :teams do 
    resources :players 
  end 

  root "welcomes#home"
  
end
