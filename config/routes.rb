Rails.application.routes.draw do

  root 'welcome#index'


  resources :users

  resources :movies
  resources :reviews

  resources :movies do
  resources :reviews
end

end
