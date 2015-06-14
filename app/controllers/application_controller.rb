class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActionController::InvalidAuthenticityToken,
    with: :authenticity_failure

  private

  def authenticity_failure
    redirect_to new_user_path, alert: 'You have no authenticity token'
  end
end
