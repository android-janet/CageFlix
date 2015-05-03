Rails.application.routes.draw do

  root 'welcome#index'

  resources :movies
  resources :reviews

  resources :movies do
  resources :reviews
end

end
