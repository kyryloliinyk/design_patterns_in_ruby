# Singleton
class SomePreferences
  DEFAULT_URL      = '/api'
  DEFAULT_METHOD   = :get
  DEFAULT_PROTOCOL = :http

  attr_reader :url, :method

  # Makes 'new' class method private
  # and forbids to create new instances
  private_class_method :new

  # Provides access to single possible instance
  # Creates it in 'lazy' mode and saves to class variable
  def self.instance
    @@instance ||= new
  end

  # Provides ability to update instance with the help of block
  def self.configure
    yield(self.instance) if block_given?
  end

  def initialize
    @url      = DEFAULT_URL
    @method   = DEFAULT_METHOD
    @protocol = DEFAULT_PROTOCOL
  end

  # Setter methods to update instance

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
