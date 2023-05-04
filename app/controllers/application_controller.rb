
# class ApplicationController < ActionController::Base
#   config.serve_static_assets = true

# end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_customer!

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:id_proof,:address_proof,:profile_image,:customer_name, :address,:gender, :contact_no, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:id_proof,:address_proof,:profile_image,:customer_name, :address,:gender, :contact_no, :email, :password ,:current_password)}
  end
end

