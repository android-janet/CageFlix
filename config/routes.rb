Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'session#new', as: :login

  resources :users

  resources :movies
  resources :reviews

  resources :movies do
  resources :reviews
end

end
