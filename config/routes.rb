Rails.application.routes.draw do
  get  'signup', to:'users#new'
  get 'users/show'
  root 'front_pages#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
