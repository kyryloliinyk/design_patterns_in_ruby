class BcryptAdapter
  COST = 12

  def encode(secret, salt: nil, cost: COST)
    salt ||= BCrypt::Engine.generate_salt(cost)
    BCrypt::Engine.hash_secret(secret, salt)
  end

  def compare(secret:, secret_hash:)
    salt = BCrypt::Password.new(secret_hash).salt
    hash = encode(secret, salt: salt)

    ActiveSupport::SecurityUtils.secure_compare(hash, secret_hash)
  end
end
