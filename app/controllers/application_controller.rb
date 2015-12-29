class ApplicationController < ActionController::Base
  # layout 'facebook.html.erb'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout "blog"
  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource)
   new_user_session_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
    
end
