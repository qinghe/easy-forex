class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    account_exchanges_path
  end

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end

  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :email, :password, :password_confirmation)
    end
  end

  def disable_nav
    @disable_nav = true
  end
  
end
