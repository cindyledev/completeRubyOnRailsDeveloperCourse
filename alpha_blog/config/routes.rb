Rails.application.routes.draw do
  resources :articles
  resources :chapters, only: [:show]
  root 'pages#home'
  get 'about', to: 'pages#about'
end
