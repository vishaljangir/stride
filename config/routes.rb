Rails.application.routes.draw do
  resources :footerlinks
  resources :news_seconds
  resources :training_blogs
  resources :training_videos
  resources :news_latests
  resources :stock_market_updates
  resources :news_firsts
  resources :sliders
  resources :menus
  resources :logos
  devise_for :users
  root to: 'stride#home'
  get '/admin', to: 'stride#admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
