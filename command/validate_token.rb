module Authentication
  # Validate provided authentication token
  class ValidateToken
    prepend SimpleCommand

    def initialize(token)
      @token = token
    end

    def call
      return add_errors unless token && token.include?(':')

      user_id = token.split(':').first
      @user = User.find_by(id: user_id)
      return add_errors unless @user

      token_is_valid = Devise.secure_compare(@user.access_token, token)
      return add_errors unless token_is_valid
    end

    def record
      @user
    end

    private

    attr_reader :token

    def add_errors
      errors.add(:invalid_credentials, I18n.t('auth.unauthorized'))
    end
  end
end
