Rails.application.routes.draw do
  resources :paymenttypes
  resources :gametypes
  resources :gameinstances
  resources :sessions
  root 'homepages#index'
  resources :customerdata
  resources :homepages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
