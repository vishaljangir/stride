class StrideController < ApplicationController
  def home
  	@logos = Logo.all
  	@menus = Menu.all

  end
end
