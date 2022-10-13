# frozen_string_literal: true

Rails.application.routes.draw do
  resources :vehicles, only: [] do
    collection do
      get :vehicle_information
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#index'
  devise_for :users
  resources :reservations, only: %i[create index update]
end
