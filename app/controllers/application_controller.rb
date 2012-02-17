class ApplicationController < ActionController::Base
  protect_from_forgery
  
  respond_to :html, :js
 
  layout :layout_by_resource
  
  def layout_by_resource
    user_signed_in? ? 'application' : 'homepage'
  end

end
