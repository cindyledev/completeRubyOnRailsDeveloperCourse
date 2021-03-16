Rails.application.routes.draw do
  resources :articles
  resources :chapters, only: [:show, :index, :new, :create, :edit, :update]
  root 'pages#home'
  get 'about', to: 'pages#about'
end
