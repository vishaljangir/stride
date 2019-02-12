Rails.application.routes.draw do
  resources :headers
  get 'stride/home'
  resources :sliders
  resources :menus
  resources :logos
  devise_for :users
  get '/admin', to: 'page#index'
  root 'stride#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
