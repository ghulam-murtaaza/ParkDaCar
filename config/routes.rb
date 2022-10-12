# frozen_string_literal: true

Rails.application.routes.draw do
  resources :vehicle_owners
  resources :vehicles do
    collection do
      get :vehicle_information
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  # root "articles#index"
  devise_for :users
end
