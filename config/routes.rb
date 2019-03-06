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
  
  get '/admin', to: 'stride_admin#admin'

  root to: 'stride#home'

  get '/about', to: 'stride#about_us'
    get '/about/who_we_are', to: 'stride#about_who_we_are'
    get '/about/what_set_as_apart', to: 'stride#about_what_set_as_apart'
    get '/about/our_mission', to: 'stride#about_our_mission'

  get '/growth_tools', to: 'stride#growth_tools'
    get '/growth_tools/training', to: 'stride#growth_tools_training'
    get '/growth_tools/aif', to: 'stride#growth_tools_aif'
    get '/growth_tools/hedge_fund', to: 'stride#growth_tools_hedge_fund'
    get '/growth_tools/financial_planning', to: 'stride#growth_tools_financial_planning'

  get '/market_analysis', to: 'stride#market_analysis'
    get '/market_analysis/daily_updates', to: 'stride#market_analysis_daily_updates'
    get '/market_analysis/statistics', to: 'stride#market_analysis_statistics'
    get '/market_analysis/news', to: 'stride#market_analysis_news'
    get '/market_analysis/strategies', to: 'stride#market_analysis_strategies'

  get '/career', to: 'stride#career'
    get '/career/sales_marketing', to: 'stride#career_sales_marketing'
    get '/career/management_trainee', to: 'stride#career_management_trainee'
    get '/career/research_team', to: 'stride#career_research_team'

  get '/blog', to: 'stride#blog'
  get '/contact', to: 'stride#contact_us'
  get '/budget', to: 'stride#budget'
   


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
