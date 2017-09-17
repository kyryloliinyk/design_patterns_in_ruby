class RedisProxy
  def set(key, value)
    redis.set(key, value)
  end

  def expire(key, exp)
    redis.expire(key, exp)
  end

  def get(value)
    redis.get(value)
  end

  private

  def redis
    @redis ||= Redis.new(url: ENV['REDIS_URL'])
  end
end
