class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json

  before_action :configure_permitted_parameters, if: :devise_controller?

  def wrong_request(message, resource = nil)
    if resource
      render json: {
        message: message,
        errors: resource.errors.full_messages
      }, status: :unprocessable_entity
    else
      render json: {
        message: message
      }, status: :unprocessable_entity
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
