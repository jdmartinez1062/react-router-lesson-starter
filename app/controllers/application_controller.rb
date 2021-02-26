class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json

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
end
