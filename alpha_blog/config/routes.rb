Rails.application.routes.draw do
  resources :articles
  resources :chapters
  resources :materials
  root 'pages#home'
  get 'about', to: 'pages#about'
end
