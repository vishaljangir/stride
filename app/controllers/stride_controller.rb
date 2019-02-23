class StrideController < ApplicationController
  def admin
  end

  def home
  	@logos = Logo.all
  	@menus = Menu.all
  	@sliders = Slider.all
  	@news_firsts = NewsFirst.all
  	@stock_market_updates = StockMarketUpdate.all
  end
end
