class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter :autenticate_user!

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :tipo_usuario])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :tipo_usuario])

  end

private
  def autenticate_user! #metodo que limita las paginas que puede visitar un usuario sin entrar a su cuenta
=begin    if user_signed_in?

    elsif request.original_fullpath == root_path

    elsif request.original_fullpath == new_user_session_path

    elsif request.original_fullpath == new_password_path(resource_name)
      
    else
      redirect_to root_path, notice: "No tienes permiso de ver esta página, inicia sesión"
    end
=end
  end

  
 
    

end
