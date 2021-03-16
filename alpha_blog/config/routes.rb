Rails.application.routes.draw do
  resources :articles
  resources :chapters, only: [:show, :index]
  root 'pages#home'
  get 'about', to: 'pages#about'
end
