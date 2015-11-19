class ApplicationController < ActionController::Base
  # layout 'facebook.html.erb'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
