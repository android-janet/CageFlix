Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'session#new', as: :login
  get '/logout' => 'session#destroy', as: :logout

  resources :users

  resources :movies
  resources :reviews

  resources :movies do
  resources :reviews
end

end
