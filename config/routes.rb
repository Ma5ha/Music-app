Rails.application.routes.draw do
  delete "list_destroy", to: "lists#destroy"
  post "addToList", to: "lists#create"
  get 'songs', to: 'songs#index'
  delete 'playdelete', to: 'play_lists#destroy'
  post 'songcreate', to: "songs#create"
  get 'playlist_create', to: "play_lists#new"
  post 'playlist_create', to: "play_lists#create"
  get 'show_list', to: "play_lists#show"
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
