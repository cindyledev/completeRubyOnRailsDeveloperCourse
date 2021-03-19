Rails.application.routes.draw do
  resources :articles
  resources :chapters
  resources :materials do 
    resources :chapters
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
end
