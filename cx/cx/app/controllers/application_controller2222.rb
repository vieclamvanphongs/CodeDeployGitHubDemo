class ApplicationController < ActionController::Base
 
 protect_from_forgery with: :exception
 before_filter :configure_permitted_parameters, if: :devise_controller?
 
protected
 
 def configure_permitted_parameters
     
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation,:current_password,:tencongty,:motacongty, :diadiem, :quymo, :trangweb) }
    end
  def after_sign_in_path_for(nhatuyendungs)
 
    'http://vieclamvanphong.com/home/index4'
 
  end
   def after_sign_in_path_for(nguoitimviecs)
 
    'http://vieclamvanphong.com/vieclams'
 
  end
  def after_sign_up_path_for(nguoitimviecs)
    'http://vieclamvanphong.com/home/index5'
  end
  def after_inactive_sign_up_path_for(nguoitimviecs)
    'http://vieclamvanphong.com/home/index5'
  end
   def after_inactive_sign_up_path_for(nhatuyendungs)
 
    'http://vieclamvanphong.com/home/index5'
 
  end
 
def after_inactive_sign_up_path_for(nguoitimviecs)
    'http://vieclamvanphong.com/home/index5'
  end
end
