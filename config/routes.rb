Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  get    '/signup',  to: 'users#new'
  get    '/users',  to: 'users#show'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
