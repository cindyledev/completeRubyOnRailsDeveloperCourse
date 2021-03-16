Rails.application.routes.draw do
  resources :articles
  resources :chapters
  root 'pages#home'
  get 'about', to: 'pages#about'
end
