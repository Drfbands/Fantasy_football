Rails.application.routes.draw do



  resources :fits

  resources :days do 
    resources :things 

  end 

 


  get 'welcomes/home'

  resources :teams do 
    resources :players 
  end 

  root "welcomes#home"
  
end
