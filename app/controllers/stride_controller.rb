class StrideController < ApplicationController
  def admin
  end

  def home
  	@logos = Logo.all
  	@menus = Menu.all
  	@sliders = Slider.all
  end
end
