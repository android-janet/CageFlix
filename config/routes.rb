Rails.application.routes.draw do

  root 'welcome#index'

  resources :movies 
  resources :reviews


end
