Rails.application.routes.draw do
  resources :focus

  get 'welcomes/home'

  resources :teams do 
    resources :players 
  end 

  root "welcomes#home"
  
end
