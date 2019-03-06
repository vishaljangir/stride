class StrideController < ApplicationController
  layout "stride"

  def home
  	@logos = Logo.all
  	@menus = Menu.all
  	@sliders = Slider.all
  	@news_firsts = NewsFirst.all
  	@stock_market_updates = StockMarketUpdate.all
  	@news_latests = NewsLatest.all
  	@training_videos = TrainingVideo.all
  	@training_blogs = TrainingBlog.all
  	@news_seconds = NewsSecond.all
    @footerlinks = Footerlink.all
  end
  
  def training

  end
  
  def about_us
   
  end

  def about_who_we_are

  end

  def about_what_set_as_apart
    
  end

  def about_our_mission
    
  end

  def growth_tools

  end

  def growth_tools_training
    
  end

  def growth_tools_aif
    
  end

  def growth_tools_hedge_fund

  end

  def growth_tools_financial
    
  end

  def market_analysis

  end

  def market_analysis_daily_updates

  end

  def market_analysis_statistics

  end

  def market_analysis_news
    @news_seconds = NewsSecond.all
    @news_latests = NewsLatest.all
  end

  def market_analysis_strategies

  end

  def career

  end

  def career_sales_marketing

  end

  def career_management_trainee

  end

  def career_research_team

  end

  
  def blog

  end

  
  def budget

  end

  def contact_us

  end

  
end
