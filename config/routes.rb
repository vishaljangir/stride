Rails.application.routes.draw do
  resources :footerlinks, :path => "admin/footerlinks"
  resources :news_seconds, :path => "admin/news_seconds"
  resources :training_blogs, :path => "admin/training_blogs"
  resources :training_videos, :path => "admin/training_videos"
  resources :news_latests, :path => "admin/news_latests"
  resources :stock_market_updates, :path => "admin/stock_market_updates"
  resources :news_firsts, :path => "admin/news_firsts"
  resources :sliders, :path => "admin/sliders"
  resources :menus, :path => "admin/menus"
  resources :logos, :path => "admin/logos"
  devise_for :users
  root to: 'stride#home'
  get '/admin', to: 'stride_admin#admin'
  get '/training', to: 'stride#training'
  get '/ABOUT US', to: 'stride#about_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
