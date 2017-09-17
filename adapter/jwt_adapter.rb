class JwtAdapter
  SECRET = ENV['SECRET_KEY_BASE']
  ALGORITHM = 'HS512'.freeze

  def encode(payload)
    JWT.encode(payload, SECRET, ALGORITHM)
  end

  def decode(token)
    JWT.decode(token, SECRET, true, algorithm: ALGORITHM)
  end
end
