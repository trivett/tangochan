class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name << :native_language << :learning_language << :image_url << :city << :country

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :native_language, :learning_language, :city, :country, :password, :password_confirmation, :email, :current_password, :image_url)
    end
  end


end
