class SomePreferences
  DEFAULT_URL      = '/api'
  DEFAULT_METHOD   = :get
  DEFAULT_PROTOCOL = :http

  def self.instance
    @@instance ||= new
  end

  def self.configure
    yield(self.instance) if block_given?
  end

  def initialize
    @url      = DEFAULT_URL
    @method   = DEFAULT_METHOD
    @protocol = DEFAULT_PROTOCOL
  end

  private_class_method :new
  attr_reader :url, :method

  def url(value)
    @url = value
  end

  def method(value)
    @method = value
  end

  def protocol(value)
    @protocol = value
  end
end
