Rails.application.routes.draw do
  root 'home#home'
  resources :users, except: [:index]
end
