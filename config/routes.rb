Rails.application.routes.draw do
  get 'predays/create'

  resources :productivities do 
  	resources :predays 
  end 

  resources :focus

  get 'welcomes/home'

  resources :teams do 
    resources :players 
  end 

  root "welcomes#home"
  
end
