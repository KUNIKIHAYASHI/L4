Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  resources :users
  
  get "up" => "rails/health#show", as: :rails_health_check
  
  get 'top/main'
  post 'top/login'
  root 'top#main'
  get 'top/logout'
end
