class ApplicationController < ActionController::Base
	# def render_not_found
	# 	render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
	# end
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "user"
    else
      "application"
    end
  end
end
