class StrideController < ApplicationController
  def admin
  end

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
end
