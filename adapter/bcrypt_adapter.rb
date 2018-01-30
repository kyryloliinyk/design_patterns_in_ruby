# Adapter for BCrypt
class BcryptAdapter
  COST = 12

  # BCrypt provides interface to generate salt and hash secret
  # Adapter combines these ablities to single method 'encode'
  # and provides ability to influence on result with arguments
  def encode(secret, salt: nil, cost: COST)
    salt ||= BCrypt::Engine.generate_salt(cost)
    BCrypt::Engine.hash_secret(secret, salt)
  end

  # BCrypt does not provide all required interface
  # for secure compare pure secret with secret hash
  # So adapter uses existing BCrypt interface
  # and completes it with ActiveSupport utils
  def compare(secret:, secret_hash:)
    salt = BCrypt::Password.new(secret_hash).salt
    hash = encode(secret, salt: salt)

    ActiveSupport::SecurityUtils.secure_compare(hash, secret_hash)
  end
end
