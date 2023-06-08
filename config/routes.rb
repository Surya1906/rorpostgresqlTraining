Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get '/about', to: 'pages#about'
  resources :articles, only: [:show]
  resources :demos, only: [:show]
end
