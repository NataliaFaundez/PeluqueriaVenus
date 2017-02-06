class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :tipo_usuario])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :tipo_usuario])

  end
  
#metodo que indica a que pagina direccionar segun tipo de usuario
def after_sign_in_path_for(resource)
  @usuario = User.find(resource.id)
  if @usuario.tipo_usuario == 1
    admin_url
  elsif @usuario.tipo_usuario == 2
    estilista_url
  elsif @usuario.tipo_usuario == 3
    contador_url
  else
    root_path
  end
end   
    

end
