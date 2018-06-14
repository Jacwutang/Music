Rails.application.routes.draw do

  resources :albums
  root 'sessions#new'
  resources :users, only: [:create,:new,:show]
  resources :bands
  resource :session, only: [:create, :destroy, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
