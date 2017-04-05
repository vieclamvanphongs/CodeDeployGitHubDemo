class ApplicationController < ActionController::Base
 before_action :store_current_location, :unless => :devise_controller?
after_filter :store_location
 
 protect_from_forgery prepend: true, with: :exception
 before_filter :configure_permitted_parameters, if: :devise_controller?
 def redirect_to_https
  if request.protocol == 'http://'
    redirect_to action: action_name,
      params: request.query_parameters,
      protocol: 'https://'
  end
end

def redirect_to_http
  if request.protocol == 'https://'
    redirect_to action: action_name,
      params: request.query_parameters,
      protocol: 'http://'
  end
end

  # override the devise helper to store the current location so we can
  # redirect to it after loggin in or out. This override makes signing in
  # and signing up work automatically.
 
protected
  def store_current_location
    store_location_for(:user, request.url)
  end
  def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get? 
  if (request.path != "/nhatuyendungs/sign_in" &&
      request.path != "/nhatuyendungs/sign_up" &&
      request.path != "/nhatuyendungs/password/new" &&
      request.path != "/nhatuyendungs/password/edit" &&
      request.path != "/nhatuyendungs/confirmation" &&
      request.path != "/nhatuyendungs/sign_out" &&
	  request.path != "/nguoitimviecs/sign_in" &&
      request.path != "/nguoitimviecs/sign_up" &&
      request.path != "/nguoitimviecs/password/new" &&
      request.path != "/nguoitimviecs/password/edit" &&
      request.path != "/nguoitimviecss/confirmation" &&
      request.path != "/nguoitimviecss/sign_out" &&
      !request.xhr?) # don't store ajax calls
    session[:previous_url] = request.fullpath 
  end
end
 def configure_permitted_parameters
     
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation,:current_password,:tencongty,:motacongty, :diadiem, :quymo, :trangweb) }
    end
 
   def after_sign_in_path_for(nguoitimviecs)
 
     session[:previous_url] || root_path
  end
 
  def after_confirmation_path_for(nguoitimviecs)
 
    'google.com'
  end
  
end
