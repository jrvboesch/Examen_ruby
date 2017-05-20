Rails.application.routes.draw do
  get 'loan/index'

  get 'loan/new'

  get 'loan/show'

  get 'loan/edit'

  get 'home/home'

  root "home#home"
  
  resources :loan
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
