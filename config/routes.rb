Rails.application.routes.draw do

  get 'home/home'

  root "home#home"
  
  resources :loans do
  	resources :payments  	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
