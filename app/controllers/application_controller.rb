class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :authenticate_user!

before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :email
  devise_parameter_sanitizer.for(:sign_up) << :password
  devise_parameter_sanitizer.for(:sign_up) << :password_confirmation
  devise_parameter_sanitizer.for(:sign_up) << :firstname
  devise_parameter_sanitizer.for(:sign_up) << :lastname
  devise_parameter_sanitizer.for(:sign_up) << :birthday
  devise_parameter_sanitizer.for(:sign_up) << :heightft
  devise_parameter_sanitizer.for(:sign_up) << :heightin
  devise_parameter_sanitizer.for(:sign_up) << :weight
  devise_parameter_sanitizer.for(:sign_up) << :lifestyle
  devise_parameter_sanitizer.for(:sign_up) << :weightgoal
  devise_parameter_sanitizer.for(:sign_up) << :targetweight
  devise_parameter_sanitizer.for(:sign_up) << :photo


  devise_parameter_sanitizer.for(:account_update) << :firstname
  devise_parameter_sanitizer.for(:account_update) << :email
  devise_parameter_sanitizer.for(:account_update) << :password
  devise_parameter_sanitizer.for(:account_update) << :password_confirmation
  devise_parameter_sanitizer.for(:account_update) << :firstname
  devise_parameter_sanitizer.for(:account_update) << :lastname
  devise_parameter_sanitizer.for(:account_update) << :birthday
  devise_parameter_sanitizer.for(:account_update) << :heightft
  devise_parameter_sanitizer.for(:account_update) << :heightin
  devise_parameter_sanitizer.for(:account_update) << :weight
  devise_parameter_sanitizer.for(:account_update) << :lifestyle
  devise_parameter_sanitizer.for(:account_update) << :weightgoal
  devise_parameter_sanitizer.for(:account_update) << :targetweight
  devise_parameter_sanitizer.for(:account_update) << :photo


end
end
