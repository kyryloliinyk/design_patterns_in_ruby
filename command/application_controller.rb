class ApplicationController < ActionController::API
  before_action :authenticate_user_from_token

  respond_to :json

  def authenticate_user_from_token
    auth_token = request.headers['Authorization']
    auth = ::Authentication::ValidateToken.call(auth_token)

    if auth.success?
      sign_in auth.record, store: false
    else
      render json: { errors: auth.errors }, status: 401
    end
  end
end
