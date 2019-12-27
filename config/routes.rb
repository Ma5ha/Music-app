Rails.application.routes.draw do
  delete "logout" , to: 'sessions#destroy'
  get "user", to: "users#show"
  get "login", to:'sessions#new'
  post "login", to: "sessions#create"
  resources :sessions
  resources :users
  get  'signup', to:'users#new'
  get "show_user", to:'users#show'
  root 'front_pages#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
