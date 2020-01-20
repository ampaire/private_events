# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'
  get    '/signin',   to: 'sessions#new'
  post   '/signin',   to: 'sessions#create'
  delete '/signout',  to: 'sessions#destroy'
  get     '/events/new',   to: 'events#new'
  post    '/events/new',   to: 'events#create'
  get     '/event',        to: 'events#show'
  get     '/events',       to: 'events#show'

  resources :users
  resources :events, only: %i[new create show index]
  resources :sessions, only: %i[new create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
