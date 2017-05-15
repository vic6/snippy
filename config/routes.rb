Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  resources :users
end
