# frozen_string_literal: true

Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new"

  put "/attend", to: "users#attending"
  delete "/not_attend", to: "users#not_attending"

  resources :users
  resources :events
  resources :attended_events
  root "sessions#new"
end
