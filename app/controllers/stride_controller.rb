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

  def blog

  end

  def career

  end

  def contact_us

  end
end
